class UnitConversionInfo {
  String baseUnitName = "";
  String baseUnitValue = "";

  String convertedUnitName = "";
  String convertedUnitValue = "";

  Function conversionFunction;

  UnitConversionInfo(
      {required this.baseUnitName,
      required this.baseUnitValue,
      required this.convertedUnitName,
      required this.conversionFunction});
}
