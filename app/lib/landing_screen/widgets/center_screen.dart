import 'package:bank_for_all/pin_screen/pin_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CenterScreen extends StatelessWidget {
  const CenterScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Center(
          child: ExcludeSemantics(
            child: Image.asset("assets/images/mic_icon.png"),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Semantics(
              sortKey: const OrdinalSortKey(0),
              child: RaisedButton(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25.0,
                  vertical: 20,
                ),
                color: Theme.of(context).buttonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const PinScreen()),
                ),
                child: const Text(
                  "Confirm",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
