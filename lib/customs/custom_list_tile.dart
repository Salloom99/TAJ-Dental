import 'package:flutter/material.dart';
import '../screens/bill_screen.dart';
import '../models/bill.dart';
import '../providers/doctors.dart';

class CustomListTile extends StatelessWidget {
  final Bill bill;
  const CustomListTile({Key ?key, required this.bill}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final doctor = Doctors().items[bill.doctorId];
    return ListTile(
      title: Text(
        '${doctor.firstName} ${doctor.lastName}',
        style: TextStyle(color: Theme.of(context).primaryColorLight),
      ),
      leading: CircleAvatar(
        backgroundColor: Theme.of(context).cardColor,
        child: Text(
          bill.kow.toString().split('.').last,
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
      ),
      subtitle: Text(
        bill.tcolor.toString().split('.').last,
        style: TextStyle(color: Theme.of(context).primaryColorLight),
      ),
      trailing: CircleAvatar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        child: Text(
          '${bill.teeth.count}',
          style: TextStyle(color: Colors.white),
        ),
      ),
      onTap: () => Navigator.of(context)
          .pushNamed(BillScreen.routeName, arguments: bill),
    );
  }
}
