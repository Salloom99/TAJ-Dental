import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/doctor.dart';
import '../models/bill.dart';

import '../providers/doctors.dart';

class BillScreen extends StatelessWidget {
  static const routeName = '/AllBill';
  const BillScreen({
    Key ?key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentBill = ModalRoute.of(context)!.settings.arguments as Bill;
    Doctor doctor = Doctors().items[currentBill.doctorId];
    return Scaffold(
      appBar: AppBar(
        title: Text(currentBill.id),
      ),
      body: SingleChildScrollView(
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          margin: EdgeInsets.all(5),
          elevation: 5,
          child: Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                ListTile(
                  leading: Chip(
                    label: Text(
                      'Doctor :',
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                  ),
                  title: Text(doctor.toString()),
                ),
                ListTile(
                  leading: Chip(
                    label: Text(
                      'Patient :',
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                  ),
                  title: Text(currentBill.patient),
                ),
                Card(
                  color: Colors.grey,
                  margin: EdgeInsets.all(15),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                          backgroundColor: Theme.of(context).colorScheme.secondary,
                          child:
                              Text(currentBill.kow.toString().split('.').last),
                        ),
                        CircleAvatar(
                          backgroundColor: Theme.of(context).colorScheme.secondary,
                          child: Text(
                              currentBill.tcolor.toString().split('.').last),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  color: Colors.grey,
                  margin: EdgeInsets.all(15),
                  child: Container(
                    margin: EdgeInsets.all(15),
                    height: 100,
                    child: Column(
                      children: [
                        Flexible(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              currentBill.teeth.ul == ''
                                  ? SizedBox(
                                      width: currentBill.teeth.ur.length * 14.0,
                                    )
                                  : Text(
                                      new String.fromCharCodes(currentBill
                                          .teeth.ul.runes
                                          .toList()
                                          .reversed),
                                      style: TextStyle(fontSize: 25),
                                    ),
                              VerticalDivider(
                                  thickness: 3, width: 25, color: Colors.black),
                              currentBill.teeth.ur == ''
                                  ? SizedBox(
                                      width: currentBill.teeth.ul.length * 14.0,
                                    )
                                  : Text(
                                      currentBill.teeth.ur,
                                      style: TextStyle(fontSize: 25),
                                    ),
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 3,
                          color: Colors.black,
                        ),
                        Flexible(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              currentBill.teeth.dl == ''
                                  ? SizedBox(
                                      width: currentBill.teeth.dr.length * 14.0,
                                    )
                                  : Text(
                                      new String.fromCharCodes(
                                        currentBill.teeth.dl.runes
                                            .toList()
                                            .reversed,
                                      ),
                                      style: TextStyle(fontSize: 25),
                                    ),
                              VerticalDivider(
                                  thickness: 3, width: 25, color: Colors.black),
                              currentBill.teeth.dr == ''
                                  ? SizedBox(
                                      width: currentBill.teeth.dl.length * 14.0,
                                    )
                                  : Text(
                                      currentBill.teeth.dr,
                                      style: TextStyle(fontSize: 25),
                                    ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ListTile(
                  leading: Chip(
                    label: Text(
                      'Receive Date :',
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                  ),
                  title: Text(
                      DateFormat('dd/MM/yyyy').format(currentBill.receive)),
                ),
                ListTile(
                  leading: Chip(
                    label: Text(
                      'Deliver Date   :',
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                  ),
                  title: Text(
                      DateFormat('dd/MM/yyyy').format(currentBill.delivery)),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Notes'),
                  initialValue: currentBill.notes,
                  readOnly: true,
                  enabled: false,
                  maxLines: 3,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: FloatingActionButton(
                      child: Icon(Icons.edit),
                      onPressed: ()=>{},
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
