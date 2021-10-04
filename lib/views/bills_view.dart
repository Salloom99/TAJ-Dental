import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../customs/custom_list_tile.dart';
import '../providers/bills.dart';

class BillsView extends StatefulWidget {
  const BillsView({Key ?key}) : super(key: key);

  @override
  _BillsViewState createState() => _BillsViewState();
}

class _BillsViewState extends State<BillsView> {

  @override
  Widget build(BuildContext context) {
    final currentBills = Provider.of<Bills>(context).items;
    return ListView.separated(
      itemCount: currentBills.length,
      itemBuilder: (context, index){
        return CustomListTile(bill: currentBills[index]);
      },
      separatorBuilder: (_,index)=>Divider(height: 1,),
    );
  }
}
