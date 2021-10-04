import 'package:flutter/material.dart';
import '../models/teeth.dart';

class TeethWidget extends StatelessWidget {
  final Teeth teeth;
  const TeethWidget({Key ?key, required this.teeth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 5,
      child: Container(
        height: 45,
        width: 110,
        child: Column(
          children: [
            Flexible(
              child: Row(
                children: [
                  FittedBox(child: Text(teeth.ul)),
                  VerticalDivider(width: 5, color: Colors.black),
                  FittedBox(child: Text(teeth.ur)),
                ],
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            Flexible(
              child: Row(
                children: [
                  FittedBox(child: Text(teeth.dl)),
                  VerticalDivider(width: 5, color: Colors.black),
                  FittedBox(child: Text(teeth.dr)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
