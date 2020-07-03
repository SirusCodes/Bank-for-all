import 'package:flutter/material.dart';

import '../../services/auth_service.dart';
import '../../utils/setup_locator.dart';
import '../landing_screen/landing_screen.dart';

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
              (value) {
                if (value) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => const LandingScreen()),
                  );
                }
              },
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
