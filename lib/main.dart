import 'package:flutter/material.dart';
import 'package:project/size_config.dart';
//import './size_config.dart';
import './pop_up.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    //SizeConfig().init(context);
    return PopUp();
  }
}
