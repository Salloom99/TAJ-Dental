import 'package:flutter/material.dart';
import '../screens/new_doctor_screen.dart';

class CustomFAB extends StatelessWidget {
  const CustomFAB({Key ?key, required this.add}) : super(key: key);

  final Function add;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed:()=>showBottomSheet(
          context: context,
          builder: (context)=> NewDoctorScreen(add: add)),
    );
  }
}
