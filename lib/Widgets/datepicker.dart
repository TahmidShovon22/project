import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';
import 'package:project/constants.dart';
import 'package:project/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

class TestPickerWidget extends StatefulWidget {
  final txt;
  final format;
  final icontype;
  final isColored;
  const TestPickerWidget(this.txt, this.format, this.icontype, this.isColored);
  @override
  _TestPickerWidgetState createState() => _TestPickerWidgetState();
}

class _TestPickerWidgetState extends State<TestPickerWidget> {
  DateTime _selectedDate;
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
          //Platform.isIOS ?
          _selectDateIOS(context);
          // : _selectDate(context);
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

  _selectDateIOS(BuildContext context) async {
    final DateTime newSelectedDate = await DatePicker.showDatePicker(
      context,
      theme: DatePickerTheme(
        containerHeight: getProportionateScreenHeight(280),
        itemHeight: getProportionateScreenHeight(40),
      ),
      showTitleActions: true,
      minTime: DateTime.now(),
      maxTime: DateTime(2040),
      onConfirm: (date) {
        setState(() {});
      },
      currentTime: DateTime.now(),
    );
    if (newSelectedDate != null &&
        widget.format == 'WeekdayABBR, MonthABBR date') {
      _selectedDate = newSelectedDate;
      _textEditingController
        ..text = DateFormat('EE, MMM d').format(_selectedDate)
        ..selection = TextSelection.fromPosition(TextPosition(
            offset: _textEditingController.text.length,
            affinity: TextAffinity.upstream));
    } else if (newSelectedDate != null && widget.format == 'dd/mm/yyyy') {
      _selectedDate = newSelectedDate;
      _textEditingController
        ..text = DateFormat('d/M/y').format(_selectedDate)
        ..selection = TextSelection.fromPosition(TextPosition(
            offset: _textEditingController.text.length,
            affinity: TextAffinity.upstream));
    }
  }

// inside Widget build
  _selectDate(BuildContext context) async {
    DateTime newSelectedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate != null ? _selectedDate : DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2040),
    );

    if (newSelectedDate != null &&
        widget.format == 'WeekdayABBR, MonthABBR date') {
      _selectedDate = newSelectedDate;
      _textEditingController
        ..text = DateFormat('EE, MMM d').format(_selectedDate)
        ..selection = TextSelection.fromPosition(
          TextPosition(
              offset: _textEditingController.text.length,
              affinity: TextAffinity.upstream),
        );
    } else if (newSelectedDate != null && widget.format == 'dd/mm/yyyy') {
      _selectedDate = newSelectedDate;
      _textEditingController
        ..text = DateFormat('d/M/y').format(_selectedDate)
        ..selection = TextSelection.fromPosition(TextPosition(
            offset: _textEditingController.text.length,
            affinity: TextAffinity.upstream));
    }
  }
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}
