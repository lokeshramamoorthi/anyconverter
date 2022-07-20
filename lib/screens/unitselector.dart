import 'package:anyconverter/data/unitsdata.dart';
import 'package:anyconverter/info/unitconversioninfo.dart';
import 'package:anyconverter/screens/coversionscreen.dart';
import 'package:flutter/material.dart';

class UnitSelectorScreen extends StatelessWidget {
  static final String routeName = "/UnitSelectorScreen";

  List<Widget> createConversionButtons(
      BuildContext context, List<UnitConversionInfo> conversionInfo) {
    List<Widget> displayList = <Widget>[];

    for (UnitConversionInfo uic in conversionInfo) {
      Widget w = Container(
        margin: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.brown,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(20.0)),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, ConversionScreen.routeName,
                arguments: DisplayUnitBox(unitConversionInfo: uic));
          },
          child: Text(
            "${uic.baseUnitName} to ${uic.convertedUnitName}",
            style: TextStyle(fontSize: 30.0),
          ),
        ),
      );

      displayList.add(w);
    }

    return displayList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select the unit to convert"),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              print("add button pressed");
            },
          ),
          IconButton(
            icon: Icon(Icons.remove),
            onPressed: () {
              print("remove button pressed");
            },
          )
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: createConversionButtons(context, UnitsList.UnitInfoList),
        ),
      ),
    );
  }
}
