import 'package:flutter/material.dart';

import '../constants.dart';

class DropDownWidget extends StatefulWidget {
  final texthint;
  final IconData ic;

  const DropDownWidget(this.texthint, this.ic);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<DropDownWidget> {
  String txt;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton(
        isExpanded: true,
        hint: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            txt == null ? widget.texthint : txt,
            style: TextStyle(
                color: kTextColor, fontFamily: 'Poppins', fontSize: 17),
            textAlign: TextAlign.center,
          ),
        ),
        items: [
          DropdownMenuItem(value: "Easy", child: Text("Easy")),
          DropdownMenuItem(value: "Hard", child: Text("Hard"))
        ],
        onChanged: (x) {
          setState(() {
            txt = x;
          });
        },
        icon: Container(
          padding: EdgeInsets.only(right: 15),
          child: Icon(
            widget.ic,
            size: 35,
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
