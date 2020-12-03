import 'package:flutter/material.dart';
import 'package:project/Screens/booking.dart';
import 'package:project/Screens/client_info.dart';
import 'package:project/Screens/feedback_card.dart';
import 'package:project/Screens/invite_card.dart';
import 'package:project/Screens/job_details.dart';
import 'package:project/Screens/job_details_post.dart';
import 'package:project/Screens/pop_up.dart';
import 'package:project/Screens/submit_proposal.dart';
import 'package:project/constants.dart';
import 'package:project/size_config.dart';

import 'Screens/filter.dart';
import 'Widgets/datepicker.dart';

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
    //;
    return Material(
      child: Scaffold(
        //resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text('Ongoing'),
        ),
        body:
            //color: Colors.grey,
            //alignment: Alignment.center,
            //JobDetails(),
            //ClientInfo(),
            //Invite(),
            //FeedbackCard(),
            //JobDetailsPost(),
            //PopUp(),
            //Filter(),
            //SubmitProposal(),
            Booking(),
      ),
    );
  }
}
