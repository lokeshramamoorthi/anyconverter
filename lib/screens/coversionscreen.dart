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
            children: [
              Container(
                child: Column(
                  children: [
                    Text("Kilometers"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
