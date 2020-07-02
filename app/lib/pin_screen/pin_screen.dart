import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class PinScreen extends StatefulWidget {
  @override
  _PinScreenState createState() => _PinScreenState();
}

class _PinScreenState extends State<PinScreen> {

  final FlutterTts flutterTts =FlutterTts();

  Future speak() async{
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1);
    await flutterTts.speak("Retry");
  }

  int ctr=0;

  final myDots = List<Widget>();
  void addDot(detail) {
    {
      var dot =Container(
        margin: EdgeInsets.only(left: 15),
        width: 20,
        height: 20,
        decoration: BoxDecoration(
            color: Colors.black87,
            borderRadius: BorderRadius.circular(20)
        ),
      );

      setState(() {
        if(ctr<4)
        {
          ctr++;
          myDots.add(dot);
        }
        else if(ctr>=4)
          {
            ctr=0;
            myDots.clear();
            speak();
          }
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Bank For All'),
      ),
      body: Column(

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
            children: <Widget>[

            ]+myDots,
          ),
        ),
          /*1st number row*/
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                onTapUp:(detail)=>addDot(detail) ,
                child: Container(
                  margin: EdgeInsets.only(top: 30,bottom: 10),
                  width: 80,
                  height: 80,
                  child: Center(
                      child: Text('1',style: TextStyle(fontSize: 30),)
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle
                  ),
                ),
              ),

              GestureDetector(
                onTapUp:(detail)=>addDot(detail) ,
                child: Container(
                  margin: EdgeInsets.only(top: 30,bottom: 10),
                  width: 80,
                  height: 80,
                  child: Center(
                      child: Text('2',style: TextStyle(fontSize: 30),)
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle
                  ),
                ),
              ),

              GestureDetector(
                onTapUp:(detail)=>addDot(detail) ,
                child: Container(
                  margin: EdgeInsets.only(top: 30,bottom: 10),
                  width: 80,
                  height: 80,
                  child: Center(
                      child: Text('3',style: TextStyle(fontSize: 30),)
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle
                  ),
                ),
              ),
            ],
          ),

          /*2nd number row*/
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                onTapUp:(detail)=>addDot(detail) ,
                child: Container(
                  margin: EdgeInsets.only(top: 0,bottom: 10),
                  width:80,
                  height: 80,
                  child: Center(
                      child: Text('4',style: TextStyle(fontSize: 30),)
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle
                  ),
                ),
              ),

              GestureDetector(
                onTapUp:(detail)=>addDot(detail) ,
                child: Container(
                  margin: EdgeInsets.only(top: 0,bottom: 10),
                  width:80,
                  height: 80,
                  child: Center(
                      child: Text('5',style: TextStyle(fontSize: 30),)
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle
                  ),
                ),
              ),

              GestureDetector(
                onTapUp:(detail)=>addDot(detail) ,
                child: Container(
                  margin: EdgeInsets.only(top: 0,bottom: 10),
                  width: 80,
                  height: 80,
                  child: Center(
                      child: Text('6',style: TextStyle(fontSize: 30),)
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle
                  ),
                ),
              ),
            ],
          ),

          /*3rd number row*/
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                onTapUp:(detail)=>addDot(detail) ,
                child: Container(
                  margin: EdgeInsets.only(top: 0,bottom: 0),
                  width: 80,
                  height: 80,
                  child: Center(
                      child: Text('7',style: TextStyle(fontSize: 30),)
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle
                  ),
                ),
              ),

              GestureDetector(
                onTapUp:(detail)=>addDot(detail) ,
                child: Container(
                  margin: EdgeInsets.only(top: 0,bottom: 10),
                  width: 80,
                  height: 80,
                  child: Center(
                      child: Text('8',style: TextStyle(fontSize: 30),)
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle
                  ),
                ),
              ),

              GestureDetector(
                onTapUp:(detail)=>addDot(detail) ,
                child: Container(
                  margin: EdgeInsets.only(top: 0,bottom: 0),
                  width: 80,
                  height: 80,
                  child: Center(
                      child: Text('9',style: TextStyle(fontSize: 30),)
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle
                  ),
                ),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTapUp:(detail)=>addDot(detail) ,
                child: Container(
                  width: 80,
                  height: 80,
                  child: Center(
                      child: Text('0',style: TextStyle(fontSize: 30),)
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle
                  ),
                ),
              ),
            ],
          )

        ],
      ),
    );
  }
}
