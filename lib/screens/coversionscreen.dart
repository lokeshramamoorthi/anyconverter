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
              DisplayUnitBox(),
              DisplayUnitBox(),
            ],
          ),
        ),
      ),
    );
  }
}

class DisplayUnitBox extends StatelessWidget {
  const DisplayUnitBox({Key? key}) : super(key: key);

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
              "Kilometers",
              style: TextStyle(fontSize: 30.0),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "1200.00",
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
