import 'package:bank_for_all/models/transaction/transaction.dart';
import 'package:flutter/material.dart';

class AccountDetailScreen extends StatefulWidget {
  const AccountDetailScreen({Key key}) : super(key: key);
  @override
  _AccountDetailScreenState createState() => _AccountDetailScreenState();
}

class _AccountDetailScreenState extends State<AccountDetailScreen> {

  Transaction balance,accNo,ifscNo;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Container(
                
                child: Text(
                  "User Account Details",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Account number:",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  Container(
                    width: 350,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                        ),
                    child:Center(
                      child: Text("$accNo",style: TextStyle(fontSize:35),)
                      ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "IFSC number:",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  Container(
                    width: 350,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                        ),
                    child:Center(
                      child: Text("$ifscNo",style: TextStyle(fontSize:35),)
                      ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Balance:",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  Container(
                    width: 350,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                        ),
                    child:Center(
                      child: Text("$balance",style: TextStyle(fontSize:35),)
                      ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
