import 'package:bank_for_all/payment_status/payment_status.dart';
import 'package:bank_for_all/pin_screen/pin_screen.dart';
import 'package:flutter/material.dart';
import 'landing_screen/landing_screen.dart';
import 'utils/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      home: PinScreen(),
    );
  }
}
