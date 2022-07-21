import 'package:anyconverter/info/unitconversioninfo.dart';

class UnitsList {
  static List<UnitConversionInfo> UnitInfoList = [
    UnitConversionInfo(
        baseUnitValue: "0.0",
        baseUnitName: "Celcius",
        convertedUnitName: "Fahrenheit",
        conversionFunction: (value) => ((value * (9 / 5) + 32))),
    UnitConversionInfo(
        baseUnitValue: "0.0",
        baseUnitName: "Kms",
        convertedUnitName: "Miles",
        conversionFunction: (value) => ((value * 1.6))),
    UnitConversionInfo(
        baseUnitValue: "0.0",
        baseUnitName: "Liters",
        convertedUnitName: "Gallons",
        conversionFunction: (value) => ((value * 3.4))),
  ];
}
