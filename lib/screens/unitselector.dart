import 'package:anyconverter/screens/coversionscreen.dart';
import 'package:flutter/material.dart';

class UnitSelectorScreen extends StatelessWidget {
  const UnitSelectorScreen({Key? key}) : super(key: key);

  static final String routeName = "/UnitSelectorScreen";

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.brown,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(20.0)),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    ConversionScreen.routeName,
                    arguments: DisplayUnitBox(
                      baseUnitName: "Celcius",
                      baseUnitValue: "0.0",
                      convertedUnitName: "Fahrenheit",
                      conversionFunction: (value) => ((value * (9 / 5) + 32)),
                    ),
                  );
                },
                child: Text(
                  "Celcius to Fahrenheit",
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.brown,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(20.0)),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    ConversionScreen.routeName,
                    arguments: DisplayUnitBox(
                      baseUnitName: "Kilometers",
                      baseUnitValue: "0.0",
                      convertedUnitName: "Miles",
                      conversionFunction: (value) => ((value * 1.609)),
                    ),
                  );
                },
                child: Text(
                  "Miles to Kms",
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.brown,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(20.0)),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    ConversionScreen.routeName,
                    arguments: DisplayUnitBox(
                      baseUnitName: "Liters",
                      baseUnitValue: "0.0",
                      convertedUnitName: "Gallons",
                      conversionFunction: (value) => ((value * 0.4)),
                    ),
                  );
                },
                child: Text(
                  "Liters to Gallons",
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.brown,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(20.0)),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    ConversionScreen.routeName,
                    arguments: DisplayUnitBox(
                      baseUnitName: "Ounces",
                      baseUnitValue: "0.0",
                      convertedUnitName: "Milliliters",
                      conversionFunction: (value) => ((value * 0.3)),
                    ),
                  );
                },
                child: Text(
                  "Ounces to Milliliters",
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.brown,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(20.0)),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    ConversionScreen.routeName,
                    arguments: DisplayUnitBox(
                      baseUnitName: "Feet",
                      baseUnitValue: "0.0",
                      convertedUnitName: "Meters",
                      conversionFunction: (value) => ((value * 0.3)),
                    ),
                  );
                },
                child: Text(
                  "Ft to Meters",
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
