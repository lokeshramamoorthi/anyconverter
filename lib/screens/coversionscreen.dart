import 'package:flutter/material.dart';

class ConversionScreen extends StatelessWidget {
  static final String routeName = "/ConversionScreen";

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as DisplayUnitBox;

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Unit Converter"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [args],
          ),
        ),
      ),
    );
  }
}

class DisplayUnitBox extends StatefulWidget {
  String baseUnitName = "";
  String baseUnitValue = "";

  String convertedUnitName = "";
  String convertedUnitValue = "";

  Function conversionFunction;

  DisplayUnitBox(
      {required this.baseUnitName,
      required this.baseUnitValue,
      required this.convertedUnitName,
      required this.conversionFunction});

  @override
  State<DisplayUnitBox> createState() => _DisplayUnitBoxState();
}

class _DisplayUnitBoxState extends State<DisplayUnitBox> {
  double _currentSliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
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
                  this.widget.baseUnitName,
                  style: TextStyle(fontSize: 30.0),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    this.widget.baseUnitValue,
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Slider(
                    value: _currentSliderValue,
                    min: 0,
                    max: 100,
                    divisions: 5,
                    label: _currentSliderValue.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        _currentSliderValue = value;
                        widget.baseUnitValue = value.toStringAsFixed(2);
                        widget.convertedUnitValue =
                            widget.conversionFunction(value).toStringAsFixed(2);
                      });
                    })
              ],
            ),
          ),
        ),
        Container(
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
                  this.widget.convertedUnitName,
                  style: TextStyle(fontSize: 30.0),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    this.widget.convertedUnitValue,
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
