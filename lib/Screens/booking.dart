import 'package:flutter/material.dart';
import 'package:project/Widgets/datepicker.dart';
import 'package:project/Widgets/default_button.dart';
import 'package:project/Widgets/timepicker.dart';

import 'package:project/constants.dart';
import 'package:project/size_config.dart';

class Booking extends StatefulWidget {
  final ppu = 4000;
  var val = 0;
  //const Booking(this.ppu);
  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
            height: 25,
            child: Text(
              'Select Flat Size for Deep Clean',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Poppins',
                color: kTextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15),
            height: 40,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 40, right: 20),
                  width: MediaQuery.of(context).size.width / 2,
                  child: Text(
                    '800-1200 SFT\n৳ ${widget.ppu} / unit',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      color: kTextColor,
                    ),
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(right: 40),
                    width: MediaQuery.of(context).size.width / 2,
                    child: Row(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  bottomLeft: Radius.circular(5)),
                              border: Border.all(
                                  color: kPrimaryLightColor,
                                  style: BorderStyle.solid,
                                  width: 1),
                            ),
                            width: getProportionateScreenWidth(40),
                            height: getProportionateScreenHeight(40),
                            child: IconButton(
                                icon: Icon(Icons.add),
                                onPressed: () {
                                  setState(() {
                                    widget.val++;
                                  });
                                })),
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: kPrimaryLightColor,
                                style: BorderStyle.solid,
                                width: 1),
                          ),
                          width: getProportionateScreenWidth(60),
                          height: getProportionateScreenHeight(40),
                          child: Text(
                            '${widget.val}  unit',
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              color: kTextColor,
                            ),
                          ),
                        ),
                        Container(
                            decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5),
                                  bottomRight: Radius.circular(5)),
                              border: Border.all(
                                  color: kPrimaryLightColor,
                                  style: BorderStyle.solid,
                                  width: 1),
                            ),
                            width: getProportionateScreenWidth(40),
                            height: getProportionateScreenHeight(40),
                            child: IconButton(
                                icon: Icon(Icons.remove),
                                onPressed: widget.val == 0
                                    ? null
                                    : () {
                                        setState(() {
                                          widget.val--;
                                        });
                                      })),
                      ],
                    )),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15),
            height: 40,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 40, right: 20),
                  width: MediaQuery.of(context).size.width / 2,
                  child: Text(
                    '800-1200 SFT\n৳ ${widget.ppu} / unit',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      color: kTextColor,
                    ),
                  ),
                ),
                Container(
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          color: kPrimaryLightColor,
                          style: BorderStyle.solid,
                          width: 1),
                    ),
                    width: getProportionateScreenWidth(140),
                    height: getProportionateScreenHeight(40),
                    child: DefaultButton(
                      text: 'ADD',
                      press: () {},
                    )),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15),
            height: 40,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 40, right: 20),
                  width: MediaQuery.of(context).size.width / 2,
                  child: Text(
                    '800-1200 SFT\n৳ ${widget.ppu} / unit',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      color: kTextColor,
                    ),
                  ),
                ),
                Container(
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          color: kPrimaryLightColor,
                          style: BorderStyle.solid,
                          width: 1),
                    ),
                    width: getProportionateScreenWidth(140),
                    height: getProportionateScreenHeight(40),
                    child: DefaultButton(
                      text: 'ADD',
                      press: () {},
                    )),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            alignment: Alignment.center,
            color: kPrimaryLightColor,
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 40),
                  width: MediaQuery.of(context).size.width / 2,
                  child: Text(
                    'Subtotal :',
                    style: TextStyle(
                      fontSize: 28,
                      fontFamily: 'Poppins',
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 40),
                  width: MediaQuery.of(context).size.width / 2,
                  child: Text(
                    '৳ ${widget.ppu}',
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Poppins',
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 40),
            margin: EdgeInsets.only(bottom: 5, top: 10),
            height: getProportionateScreenHeight(60),
            width: MediaQuery.of(context).size.width,
            child: Text(
              'Do you need service related tools or materials?',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Poppins',
                color: kTextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: getProportionateScreenHeight(30),
            child: Row(
              children: [
                Radio(
                  value: 'Yes',
                  groupValue: null,
                  onChanged: (_) {},
                ),
                Text(
                  'Yes',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    color: kTextColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: getProportionateScreenHeight(30),
            child: Row(
              children: [
                Radio(
                  value: 'No',
                  groupValue: null,
                  onChanged: (_) {},
                ),
                Text(
                  'No',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    color: kTextColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 40),
            margin: EdgeInsets.only(bottom: 5, top: 5),
            height: getProportionateScreenHeight(60),
            width: MediaQuery.of(context).size.width,
            child: Text(
              'When would you like to take the service?',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Poppins',
                color: kTextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10, top: 5),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 40),
                  width: MediaQuery.of(context).size.width / 2,
                  child: TestPickerWidget(
                    'DD/MM/YYYY',
                    'dd/mm/yyyy',
                    Icons.calendar_today,
                    true,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 40),
                  width: MediaQuery.of(context).size.width / 2,
                  child: TimePicker(
                    'Time',
                    Icons.watch_later,
                    true,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(left: 40, right: 40, bottom: 25, top: 35),
            height: 120,
            child: DefaultButton(
              text: 'PROCEED TO BOOKING',
              press: () {},
            ),
          )
        ],
      ),
    );
  }
}
