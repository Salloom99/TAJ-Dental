import 'package:flutter/material.dart';

class CustomPopupMenuButton extends StatelessWidget {
  const CustomPopupMenuButton({key}) : super(key: key);

  //final void Function(String value) showInSnackBar;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      tooltip: 'Settings',
      padding: EdgeInsets.zero,
      //onSelected: (value) => showInSnackBar('menu'),
      itemBuilder: (context) => <PopupMenuEntry<String>>[
        PopupMenuItem<String>(
          value: '0',
          child: ListTile(
            leading: const Icon(Icons.all_inclusive),
            title: Text('Show All'),
          ),
        ),
        PopupMenuItem<String>(
          value: '1',
          child: ListTile(
            leading: const Icon(Icons.filter_alt_outlined),
            title: Text('Filter'),
          ),
        ),
      ],
    );
  }
}
