import 'package:flutter/material.dart';
import 'package:project/Screens/client_info.dart';
import 'package:project/Screens/feedback_card.dart';
import 'package:project/Screens/invite_card.dart';
import 'package:project/Screens/job_details.dart';
import 'package:project/constants.dart';
import 'package:project/size_config.dart';

void main() {
  runApp(AppLauncher());
}

class AppLauncher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
    );
  }
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
    //return PopUp();
    //return JobDetails();
    //return ClientInfo();
    //return Invite();
    return FeedbackCard();
  }
}
