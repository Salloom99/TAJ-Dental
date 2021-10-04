import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/doctor.dart';


class NewDoctorScreen extends StatefulWidget {
  const NewDoctorScreen({Key ?key, required this.add}) : super(key: key);

  final Function add;


  @override
  _NewDoctorScreenState createState() => _NewDoctorScreenState();
}

class _NewDoctorScreenState extends State<NewDoctorScreen> {

  final firstName = TextEditingController();
  final lastName = TextEditingController();


  void _add() {
    widget.add(Doctor(0,firstName.text,lastName.text));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                autofocus: true,
                decoration: InputDecoration(labelText:'first name'),
                controller: firstName,
                onSubmitted: (_) => _add(),
              ),
              TextField(
                decoration: InputDecoration(labelText:'last name'),
                controller: lastName,
                onSubmitted: (_) => _add(),
              ),
              TextButton(
                  child: Text('Add'),
                  onPressed: _add,
              ),
            ],
          ),
        ),
      ),
    );
  }

}
