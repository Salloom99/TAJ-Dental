import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../customs/custom_list_tile.dart';
import '../providers/requested_bills.dart';

class RequestedBillsView extends StatefulWidget {
  RequestedBillsView({Key ?key}) : super(key: key);

  @override
  _RequestedBillsViewState createState() => _RequestedBillsViewState();
}

class _RequestedBillsViewState extends State<RequestedBillsView> {
  @override
  Widget build(BuildContext context) {
    final bills = Provider.of<RequestedBills>(context);
    return ListView.builder(
      itemCount: bills.items.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: Dismissible(
              child: CustomListTile(bill: bills.items[index],
              ),
              background: Container(
                child: Icon(Icons.check,color: Colors.white,),
                color: Colors.green,
                alignment: AlignmentDirectional.centerStart,
                padding: EdgeInsets.only(left: 15),
              ),
              secondaryBackground: Container(
                color: Colors.red,
                child: Icon(Icons.delete,color: Colors.white,),
                alignment: AlignmentDirectional.centerEnd,
                padding: EdgeInsets.only(right: 15),
              ),
              key: UniqueKey(),
              onDismissed: (DismissDirection direction) {
                setState(() {
                  bills.removeBillAt(index);
                  //items[index]['value']=true;
                });
              },
          ),
        );
      },
    );
  }
}
