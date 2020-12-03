import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';

import '../constants.dart';
import '../size_config.dart';
import 'datepicker.dart';

class TimePicker extends StatefulWidget {
  final txt;

  final icontype;
  final isColored;
  const TimePicker(this.txt, this.icontype, this.isColored);
  @override
  _TimePickerState createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  String time;
  TimeOfDay selectedTime = TimeOfDay.now();
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: getProportionateScreenHeight(40),
      child: TextField(
        focusNode: AlwaysDisabledFocusNode(),
        controller: _textEditingController,
        onTap: () {
          Platform.isIOS ? _selectTimeIOS(context) : _selectTime(context);
        },
        decoration: InputDecoration(
          hintText: widget.txt,
          suffixIcon: Icon(
            widget.icontype,
            color: widget.isColored ? kPrimaryColor : null,
          ),
        ),
      ),
    );
  }

  Future<void> _selectTimeIOS(BuildContext context) async {
    DatePicker.showTimePicker(
      context,
      theme: DatePickerTheme(
        containerHeight: getProportionateScreenHeight(280),
        itemHeight: getProportionateScreenHeight(40),
      ),
      showTitleActions: true,
      onConfirm: (picked) {
        setState(() {
          _textEditingController..text = DateFormat('hh:mm a').format(picked);
        });
      },
      currentTime: DateTime.now(),
    ) as TimeOfDay;
  }

  _selectTime(BuildContext context) async {
    TimeOfDay newSelectedTime = await showTimePicker(
      context: context,
      initialTime: selectedTime != null ? selectedTime : DateTime.now(),
    );

    if (newSelectedTime != null) {
      selectedTime = newSelectedTime;
      _textEditingController
        ..text = newSelectedTime.format(context)
        ..selection = TextSelection.fromPosition(
          TextPosition(
              offset: _textEditingController.text.length,
              affinity: TextAffinity.upstream),
        );
    }
  }
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}
