import 'dart:collection';

class UserData {
  static HashMap<String, String> userData = HashMap<String, String>();

  static init() {
    userData.putIfAbsent("Jane", () => "Jane123");
    userData.putIfAbsent("John", () => "John123");
    userData.putIfAbsent("Jenny", () => "Jenny123");
    userData.putIfAbsent("Janet", () => "Janet123");
    userData.putIfAbsent("Jonam", () => "Jonam123");
  }
}
