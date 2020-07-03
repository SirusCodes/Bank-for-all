
/*this is login scrn*/

import 'package:bank_for_all/screens/amount_input_screen/amount_input_screen.dart';
import 'package:bank_for_all/screens/fingerprint_screen/fingerprint_screen.dart';
import 'package:bank_for_all/screens/landing_screen/landing_screen.dart';
import 'package:bank_for_all/screens/pin_screen/pin_screen.dart';
import 'package:flutter/material.dart';

import 'screens/login_screen/login_screen.dart';
import 'screens/landing_screen/landing_screen.dart';
import 'utils/setup_locator.dart';
import 'utils/theme.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      home: const AmountInputScreen(),
    );
  }
}
