import 'package:bank_for_all/screens/landing_screen/landing_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class PaymentStatus extends StatefulWidget {
  String result, ico;
  PaymentStatus({this.result, this.ico});
  @override
  _PaymentStatusState createState() => _PaymentStatusState(result, ico);
}

class _PaymentStatusState extends State<PaymentStatus> {
  String result, ico;
  _PaymentStatusState(this.result, this.ico);
/*icons too use clear close*/
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Center(
              child: Container(
                child: Text(
                  "Payment $result",
                  style: TextStyle(color: Colors.white, fontSize: 45),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            ExcludeSemantics(
              child: Container(
                width: 300,
                height: 300,
                child: Image.asset("assets/images/$ico.png"),
              ),
            ),
            Semantics(
              label: "Go Home",
              child: InkWell(
                onTap: () {
                          Navigator.of(context).popUntil((route) => route.isFirst);
                        },
                child: Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(Icons.home, size: 40),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
