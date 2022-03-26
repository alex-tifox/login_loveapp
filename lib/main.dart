import 'package:flutter/material.dart';
import 'package:login_loveapp/common/theme/theme.dart';
import 'package:login_loveapp/locator.dart';
import 'package:login_loveapp/screens/login_screen.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: loveappTheme,
      home: LoginScreen(),
    );
  }
}
