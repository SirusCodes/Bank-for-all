import 'package:flutter/material.dart';

class AuthTypeScreen extends StatelessWidget {
  const AuthTypeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    color: Theme.of(context).accentColor,
                    alignment: Alignment.center,
                    child: const Text(
                      "Pin",
                      style: TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    color: Theme.of(context).primaryColor,
                    alignment: Alignment.center,
                    child: const Text(
                      "Pattern",
                      style: TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
