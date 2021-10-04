import 'package:flutter/material.dart';
import '../customs/custom_fab.dart';
import '../models/doctor.dart';
import '../providers/doctors.dart';


class DoctorsScreen extends StatefulWidget {
  const DoctorsScreen({Key ?key}) : super(key: key);

  static final routeName = '/Doctors';
  @override
  _DoctorsScreenState createState() => _DoctorsScreenState();
}

class _DoctorsScreenState extends State<DoctorsScreen> {
  void _addNewDoctor(Doctor doctor) {
    setState(() => Doctors().items.add(doctor));
    Navigator.of(context).pop();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctors'),
      ),
      body: ListView.separated(
        itemCount: Doctors().items.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(
            '${Doctors().items[index]}',
            style: TextStyle(color: Theme.of(context).primaryColorLight),
          ),
        ),
        separatorBuilder: (_, index) =>
            Divider(height: 5,
                indent: 15,
                endIndent: 25,
                color: Theme.of(context).primaryColorLight),
      ),
      floatingActionButton: CustomFAB(add: _addNewDoctor),
    );
  }
}
