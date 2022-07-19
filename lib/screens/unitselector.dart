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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                onPressed: () {},
                child: Text(
                  "Celcius to Fahrenheit",
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
