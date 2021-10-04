import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';

import '../screens/home_screen.dart';
import '../providers/users.dart';

class LoginScreen extends StatelessWidget {
  static final routeName ='/Login';
  const LoginScreen({Key ?key}) : super(key: key);

  Future<String> _authUser(LoginData data) {
    print('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(Duration(milliseconds: 2250)).then((_) {
      if (!Users().items.containsKey(data.name)) {
        return 'Username not exists';
      }
      if (Users().items[data.name] != data.password) {
        return 'Password does not match';
      }
      return '';
    });
  }

  Future<String> _recoverPassword(String name) {
    print('Name: $name');
    return Future.delayed(Duration(milliseconds: 2250)).then((_) {
      if (!Users().items.containsKey(name)) {
        return 'Username not exists';
      }
      return '';
    });
  }


  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      theme: LoginTheme(footerTextStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
      logo: 'images/logo_extended.png',
      title: 'TAJ Dental',
        onLogin: _authUser,
        onSignup: _authUser,
        onRecoverPassword: _recoverPassword,
        onSubmitAnimationCompleted: () =>
            Navigator.of(context).pushReplacementNamed(HomeScreen.routeName),
      footer: 'By En.Salem Domani',
    );
  }
}
