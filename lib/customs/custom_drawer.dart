import 'package:flutter/material.dart';
import '../providers/doctors.dart';

import '../screens/settings_screen.dart';
import '../screens/doctors_screen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key ?key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountEmail: Text(
              'haitham.domani@gmail.com'
            ),
            accountName: Text(
              'Haitham Domani',
              style: TextStyle(fontSize: 25),
            ),
            currentAccountPicture: GestureDetector(
              onTap: () => print('icon pressed'),
              child: CircleAvatar(
                child: Image.asset('images/logo.png'),
                backgroundColor: Theme.of(context).cardColor,
              ),
            ),
            // onDetailsPressed: ()=>print('pressed'),
          ),
          ListTile(
            leading: Icon(
              Icons.medical_services_outlined,
              color: Theme.of(context).primaryColorLight,
            ),
            title: Text(
              'Doctors',
              style: TextStyle(color: Theme.of(context).primaryColorLight),
            ),
            trailing: CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.secondary,
              radius: 15,
              child: Text(
                '${Doctors().items.length}',
                style: TextStyle(color: Colors.white),
              ),
            ),
            onTap: () {
              Navigator.of(context).pushNamed(DoctorsScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.notifications_none,
              color: Theme.of(context).primaryColorLight,
            ),
            title: Text(
              'Notifications',
              style: TextStyle(color: Theme.of(context).primaryColorLight),
            ),
            trailing: CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.secondary,
              radius: 15,
              child: Text(
                '10',
                style: TextStyle(color: Colors.white),
              ),
            ),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed('NotificationsScreen.routeName');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Theme.of(context).primaryColorLight,
            ),
            title: Text(
              'Settings',
              style: TextStyle(color: Theme.of(context).primaryColorLight),
            ),
            onTap: () {
              Navigator.of(context).pushNamed(SettingsScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.info_outline,
              color: Theme.of(context).primaryColorLight,
            ),
            title: Text(
              'AboutUs',
              style: TextStyle(color: Theme.of(context).primaryColorLight),
            ),
            onTap: () {
              showAboutDialog(
                context: context,
                applicationName: 'Dental Care',
                applicationLegalese:
                    'This App created by En.Salem Domani to make Dentists\' life much easier',
              );
            },
          ),
        ],
      ),
    );
  }
}
