import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class PinScreen extends StatefulWidget {
  @override
  _PinScreenState createState() => _PinScreenState();
}

class _PinScreenState extends State<PinScreen> {
  final FlutterTts flutterTts = FlutterTts();

  Future speak(String word) async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1);
    await flutterTts.speak(word);
  }

  int ctr = 0;

  final List<Widget> myDots = [];

  void addDot(int number) {
    {
      final dot = Container(
        margin: const EdgeInsets.only(left: 15),
        width: 20,
        height: 20,
        decoration: BoxDecoration(
            color: Colors.black87, borderRadius: BorderRadius.circular(20)),
      );

      setState(() {
        if (ctr < 4) {
          ctr++;
          myDots.add(dot);
        } else {
          ctr = 0;
          myDots.clear();
          speak("Retry");
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
//          Container(
//            height: 40,
//            child: ListView(
//              scrollDirection: Axis.horizontal,
//              children: <Widget>[
//                Container(
//                  width: 20,
//                  height: 20,
//                  decoration: BoxDecoration(
//                      color: Colors.white,
//                      shape: BoxShape.circle
//                  ),
//                ),
//
//              ],
//            ),
//          ),
            Container(
              width: 350,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: myDots,
              ),
            ),
            /*1st number row*/
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                numberButton(1),
                numberButton(2),
                numberButton(3),
              ],
            ),

            /*2nd number row*/
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                numberButton(4),
                numberButton(5),
                numberButton(6),
              ],
            ),

            /*3rd number row*/
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                numberButton(7),
                numberButton(8),
                numberButton(9),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                numberButton(0),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget numberButton(int number) {
    return Semantics(
      button: true,
      value: number.toString(),
      child: GestureDetector(
        onTap: () {
          addDot(number);
          speak("$number is added");
        },
        child: ExcludeSemantics(
          child: Container(
            margin: const EdgeInsets.only(top: 30, bottom: 10),
            width: 80,
            height: 80,
            decoration:
                BoxDecoration(color: Colors.white, shape: BoxShape.circle),
            child: Center(
                child: Text(
              number.toString(),
              style: const TextStyle(fontSize: 30),
            )),
          ),
        ),
      ),
    );
  }
}
