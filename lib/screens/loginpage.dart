import 'package:anyconverter/data/userdata.dart';
import 'package:anyconverter/screens/unitselector.dart';
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
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Sign In "),
                      Icon(Icons.forward),
                    ],
                  ),
                  onPressed: () {
                    if (userNameController.text.isNotEmpty &&
                        passwordController.text.isNotEmpty) {
                      String message = "";

                      bool validUser = false;

                      print(userNameController.text +
                          "  password is " +
                          passwordController.text);

                      if (!UserData.userCredentials
                          .containsKey(userNameController.text)) {
                        message = "User not found !!!";
                      } else if (UserData
                              .userCredentials[userNameController.text]
                              ?.compareTo(passwordController.text) ==
                          0) {
                        message = "Welcome to the app !!";
                        validUser = true;
                      } else
                        message = " Incorrect Password!!";

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
                                  child: Text("Cancel"),
                                  onPressed: () {
                                    if (validUser) Navigator.pop(context);
                                  },
                                ),
                                TextButton(
                                  child: Text("Ok"),
                                  onPressed: () {
                                    if (validUser)
                                      Navigator.pushNamed(
                                          context, UnitSelectorScreen.routeName,
                                          arguments: userNameController.text);
                                    else
                                      Navigator.pop(context);
                                  },
                                )
                              ]);
                        },
                      );
                    } else {
                      String message = "";
                      if (userNameController.text.isEmpty &&
                          passwordController.text.isEmpty)
                        message =
                            "No input provided for username and password!!";
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
                                },
                              )
                            ],
                          );
                        },
                      );
                    }
                  },
                ),
              ),
              TextButton(
                onPressed: () {
                  final registerNameController = TextEditingController();
                  final registerPasswordController = TextEditingController();

                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        // Retrieve the text the that user has entered by using the
                        // TextEditingController.

                        actionsAlignment: MainAxisAlignment.center,
                        title: Text("Register New User"),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Input your name and password"),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Preferred username",
                                ),
                                controller: registerNameController,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                obscureText: true,
                                obscuringCharacter: "\$",
                                decoration: InputDecoration(
                                  hintText: "Preferred Password",
                                ),
                                controller: registerPasswordController,
                              ),
                            ),
                          ],
                        ),
                        actions: [
                          TextButton(
                            child: Text("Cancel"),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          TextButton(
                            child: Text("Add"),
                            onPressed: () {
                              if (registerNameController.text.isNotEmpty &&
                                  registerPasswordController.text.isNotEmpty) {
                                UserData.userCredentials.putIfAbsent(
                                    registerNameController.text,
                                    () => registerPasswordController.text);

                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        backgroundColor: Colors.green,
                                        content:
                                            Text("User added successfully!!")));
                                Navigator.pop(context);
                              } else
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        backgroundColor: Colors.red,
                                        content:
                                            Text("No input provided !!!")));
                              ;
                            },
                          )
                        ],
                      );
                    },
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Register"),
                    Icon(Icons.add),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
