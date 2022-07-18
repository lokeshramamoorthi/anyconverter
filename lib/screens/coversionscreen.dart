import 'package:flutter/material.dart';

class ConversionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Unit Converter - Miles to Kms"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              DisplayUnitBox(
                unitName: "Miles",
                unitValue: "1200.00",
              ),
              DisplayUnitBox(
                unitName: "KiloMeters",
                unitValue: "1000.00",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DisplayUnitBox extends StatelessWidget {
  String unitName = "";
  String unitValue = "";

  DisplayUnitBox({required this.unitName, required this.unitValue});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.redAccent,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(20.0)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              this.unitName,
              style: TextStyle(fontSize: 30.0),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Text(
                this.unitValue,
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
