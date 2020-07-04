
import 'package:flutter/material.dart';
import 'package:speech_recognition/speech_recognition.dart';
//import 'package:flutter_speech/flutter_speech.dart';

class AmountInputScreen extends StatefulWidget {
  const AmountInputScreen({Key key}) : super(key: key);
  @override
  _AmountInputScreenState createState() => _AmountInputScreenState();
}

class _AmountInputScreenState extends State<AmountInputScreen> {
  

  int ctr = 0;

  final List<int> amount = [];

  String _pin = "";

  void addDot(int number) {
    if (ctr < 6) {
      ctr++;
      amount.add(number);
      _pin += number.toString();
      print(_pin);
    } else {
      ctr = 0;
      _pin = "";
      amount.clear();
    }
  }

  SpeechRecognition _speech;

  bool _speechRecognitionAvailable = false;
  bool _isListening = false;

  String transcription = "";


  @override
  void initState() {
    super.initState();
    
    _speech=SpeechRecognition();
    _speech.setAvailabilityHandler((bool result) =>setState(()=>_speechRecognitionAvailable=result));
    _speech.setRecognitionStartedHandler(() =>setState(()=>_isListening=true),);
_speech.setRecognitionResultHandler((String text) =>setState(()=>transcription=text));
_speech.setRecognitionCompleteHandler(() =>setState(()=>_isListening=false),);


}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 20),
              height: 40,
              width: 350,
              child: Center(
                child: Text(
                  "Enter the Amount",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Container(
              width: 350,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "$_pin",
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 5),
                        ),
                      ],
                    ),
                  ),
                  Semantics(
                      label: "Double tap to speak",
                      child: InkWell(
                          onTap: () {
                            _speech.listen(locale:("en-US")).then((value) => print("$value"));
                          },
                          child: Image.asset("assets/images/mic_icon.png"))
                          )
                ],
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
      excludeSemantics: true,
      value: number.toString(),
      child: GestureDetector(
        onTap: () => setState(() => addDot(number)),
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
            ),
          ),
        ),
      ),
    );
  }
}
