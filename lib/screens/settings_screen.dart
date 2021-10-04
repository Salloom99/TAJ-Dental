import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  static const routeName = "/Settings";
  final Function toggleDark;
  final darkTheme;
  const SettingsScreen({
    Key ?key,
    required this.toggleDark,
    required this.darkTheme,
  }) : super(key: key);
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    bool dark = widget.darkTheme;
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: Column(
        children: [
          ListTile(
            title: Text(
              'Dark Theme',
              style: TextStyle(color: Theme.of(context).primaryColorLight),
            ),
            trailing: Switch(
                value: dark,
                onChanged: (value) => setState(() {
                      widget.toggleDark();
                      //dark = value;
                    })),
          ),
        ],
      ),
    );
  }
}
