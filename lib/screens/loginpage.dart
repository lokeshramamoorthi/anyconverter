import 'package:anyconverter/data/userdata.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static final String routeName = "/LoginPage";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //We use text controller to get a value from the field. we have 2 fields.
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    UserData.init();
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.all(20.0),
                margin: const EdgeInsets.all(20.0),
                child: Text(
                  "Welcome to Unit Converter App",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter the username",
                  ),
                  controller: userNameController,
                  textCapitalization: TextCapitalization.none,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  obscureText: true, //This is for not showing the password.
                  decoration: InputDecoration(
                    hintText: "Enter the password",
                  ),
                  controller: passwordController,
                  textCapitalization: TextCapitalization.none,
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.forward),
        onPressed: () {
          if (userNameController.text.isNotEmpty &&
              passwordController.text.isNotEmpty) {
            String message = "";

            print(userNameController.text +
                "   password is  " +
                passwordController.text);

            if (!UserData.userData.containsKey(userNameController.text)) {
              message = "User not found !!!";
            } else if (UserData.userData[userNameController.text]
                    ?.compareTo(passwordController.text) ==
                0) {
              message = "Welcome to the app!!";
            } else
              message = "Incorrect Password";

            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                    // Retrieve the text the that user has entered by using the
                    // TextEditingController.

                    title: Text(message),
                    content: Text(userNameController.text),
                    actions: [
                      TextButton(
                          child: Text("Ok"),
                          onPressed: () {
                            Navigator.pop(context);
                          })
                    ]);
              },
            );
          } else {
            String message = "";
            if (userNameController.text.isEmpty &&
                passwordController.text.isEmpty)
              message = "No input provided for username and password!!";
            else if (userNameController.text.isEmpty)
              message = "User name not found or Empty!!";
            else
              message = "Password not found or Empty!!";

            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                    // Retrieve the text the that user has entered by using the
                    // TextEditingController.

                    title: Text(message),
                    actions: [
                      TextButton(
                          child: Text("Ok"),
                          onPressed: () {
                            Navigator.pop(context);
                          })
                    ]);
              },
            );
          }
        },
      ),
    );
  }
}
