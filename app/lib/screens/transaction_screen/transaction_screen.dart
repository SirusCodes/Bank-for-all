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
              ListTile(
                title: Text("data"), 
                subtitle: Text("data"),
              )
            ]
          )
          ),

        Center(child:Text("withdraw")),
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
            title: Text("Transactions"),
            bottom: TabBar(tabs: tabs),
          ),
          body: TabBarView(children: tabpages),
        )
        )
      );
  }
}