import 'package:bank_for_all/screens/account_detail_screen/account_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SideRailing extends StatelessWidget {
  const SideRailing({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned.fill(
          child: Container(
            color: Theme.of(context).primaryColor,
          ),
        ),
        Positioned(
          width: 33,
          height: MediaQuery.of(context).size.height,
          child: Container(
            color: Theme.of(context).accentColor,
          ),
        ),
        Positioned.fill(
          child: Column(
            children: <Widget>[
              Expanded(
                child: MergeSemantics(
                  child: Semantics(
                    button: true,
                    value: "Restart Transaction",
                    sortKey: const OrdinalSortKey(2),
                    child: InkWell(
                      onTap: () {},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          const SizedBox(height: 50),
                          Image.asset("assets/images/reset.png"),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Semantics(
                  button: true,
                  value: "Get Account information",
                  sortKey: const OrdinalSortKey(3),
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const AccountDetailScreen()),
                    ),
                    child: Image.asset("assets/images/wallet.png"),
                  ),
                ),
              ),
              Expanded(
                child: Semantics(
                  button: true,
                  value: "Get help from executive",
                  sortKey: const OrdinalSortKey(4),
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Image.asset("assets/images/phone.png"),
                        const SizedBox(height: 50),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
