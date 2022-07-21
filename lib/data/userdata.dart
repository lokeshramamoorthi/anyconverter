import 'dart:collection';

class UserData {
  static HashMap<String, String> userCredentials = HashMap<String, String>();

  static init() {
    userCredentials.putIfAbsent("Jane", () => "Jane123");
    userCredentials.putIfAbsent("John", () => "John123");
    userCredentials.putIfAbsent("Jenny", () => "Jenny123");
    userCredentials.putIfAbsent("Janet", () => "Janet123");
    userCredentials.putIfAbsent("Jonam", () => "Jonam123");
    userCredentials.putIfAbsent("Tong", () => "Tong5555");
  }
}
