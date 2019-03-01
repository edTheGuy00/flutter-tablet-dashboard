import 'package:flutter/material.dart';
import 'package:tablet_dashboard/ui/home_page.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight])
      .then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tablet Dashboard',
      theme: ThemeData(),
      home: HomePage(),
    );
  }
}
