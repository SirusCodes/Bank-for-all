import 'package:flutter/material.dart';
import 'package:bank_for_all/enums/transaction_type.dart';
class TransactionScreen extends StatefulWidget {
  const TransactionScreen({Key key}) : super(key: key);

  @override
  _TransactionScreenState createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {

  @override
  Widget build(BuildContext context) {
    
        final tabpages=<Widget>[
        Center(
          child:ListView(
            children:<Widget>[
              Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: ListTile(
                  title: Text("date",style: TextStyle(color:Colors.black),), 
                  subtitle: Text("Acc no \n Amount",style: TextStyle(color:Colors.black),),
                  trailing: Icon(Icons.call_received,color: Colors.green,),
                ),
              )
            ]
          )
          ),

        Center(
          child:ListView(
            children:<Widget>[
              Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: ListTile(
                  title: Text("date",style: TextStyle(color:Colors.black),), 
                  subtitle: Text("Acc no \n Amount",style: TextStyle(color:Colors.black),),
                  trailing: Icon(Icons.call_made,color: Colors.red,),
                ),
              )
            ]
          )
          ),
    ];
    final tabs =<Tab>[
      Tab(text: "Deposit"),
      Tab(text: "Withdraw"),
    ];
    return SafeArea(
      child:DefaultTabController(
        length: tabs.length, 
        child: Scaffold(
          appBar: AppBar(
            title: Text("My Transactions"),
            bottom: TabBar(tabs: tabs),
          ),
          body: TabBarView(children: tabpages),
        )
        )
      );
  }
}