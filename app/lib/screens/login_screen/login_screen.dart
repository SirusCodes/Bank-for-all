import 'package:bank_for_all/screens/fingerprint_screen/fingerprint_screen.dart';
import 'package:bank_for_all/services/auth_service.dart';
import 'package:bank_for_all/utils/setup_locator.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: InkWell(
            onTap: () => locator<AuthService>()
                .signInWithGoogle()
                .catchError((e) {})
                .then(
                  (value) => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const FingerPrintScreen())),
                ),
            borderRadius: BorderRadius.circular(30),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                "assets/images/google_logo.jpg",
                height: 100,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
