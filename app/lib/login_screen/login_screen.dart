import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  static final OutlineInputBorder border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(15.0),
    borderSide: BorderSide(
      color: Colors.white,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                TextFormField(
                  style: const TextStyle(fontSize: 30),
                  keyboardType: TextInputType.number,
                  decoration: inputDecoration("Account Number"),
                ),
                TextFormField(
                  obscureText: true,
                  style: const TextStyle(fontSize: 30),
                  decoration: inputDecoration("Login pin"),
                ),
                Semantics(
                  button: true,
                  value: "Login",
                  child: RaisedButton(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50.0,
                      vertical: 20,
                    ),
                    color: Theme.of(context).buttonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  InputDecoration inputDecoration(String input) {
    return InputDecoration(
      hintText: input,
      hintStyle: const TextStyle(fontSize: 30),
      fillColor: Colors.white,
      filled: true,
      border: border,
      focusedBorder: border,
      enabledBorder: border,
    );
  }
}
