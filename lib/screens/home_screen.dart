import 'package:animations/animations.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '../providers/requested_bills.dart';
import '../providers/bills.dart';

import '../views/chat_view.dart';
import '../views/bills_view.dart';
import '../views/requestd_bills_view.dart';

import '../customs/custom_drawer.dart';
import '../customs/custom_popup_menu.dart';

class HomeScreen extends StatefulWidget {
  static final routeName ='/Home';
  HomeScreen({Key ?key,required this.title}) : super(key: key);
  final String title;


  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final List<Widget> views = [
    BillsView(),
    RequestedBillsView(),
    ChatView(),
  ];

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx)=>Bills()),
        ChangeNotifierProvider(create: (ctx)=>RequestedBills())
      ],
        child: Scaffold(
          appBar: AppBar(
            title: Text('TAJ Dental'),
            actions: [CustomPopupMenuButton()],
          ),
          drawer: CustomDrawer(),
          body: Center(
            child: PageTransitionSwitcher(
              transitionBuilder: (child, animation, secondaryAnimation) {
                return FadeThroughTransition(
                  animation: animation,
                  secondaryAnimation: secondaryAnimation,
                  child: child,
                );
              },
              child: IndexedStack(
                children: views,
                index : _selectedIndex,
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.list_alt,color: Theme.of(context).primaryColor,),
                label: 'Bills',
              ),
              BottomNavigationBarItem(
                icon: Badge(
                  badgeContent: Consumer<RequestedBills>(builder: (_,requstedbills,child)=>
                      Text('${(requstedbills.items as List).length}',
                        style: TextStyle(color: Colors.white),
                      ),
                  ),
                  child: Icon(Icons.notifications,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                label: 'Requested Bills',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat,color: Theme.of(context).primaryColor,),
                label: 'Chat',
              ),
            ],
            unselectedItemColor: Theme.of(context).primaryColorLight,
            selectedItemColor: Theme.of(context).colorScheme.secondary,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        ),
    );
  }
}