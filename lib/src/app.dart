import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'pages/main_page.dart';

class DashboardApp extends StatefulWidget {
  DashboardApp({Key key}) : super(key: key);

  @override
  _DashboardAppState createState() => _DashboardAppState();
}

class _DashboardAppState extends State<DashboardApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: AnimatedSwitcher(
        switchInCurve: Curves.easeOut,
        switchOutCurve: Curves.easeOut,
        duration: Duration(milliseconds: 200),
        child: MainPage(),
      ),
    );
  }
}
