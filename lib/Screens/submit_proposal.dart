import 'package:flutter/material.dart';
import 'package:project/Widgets/datepicker.dart';
import 'package:project/Widgets/default_button.dart';
import 'package:project/Widgets/rating_bar_indicator.dart';

import '../constants.dart';
import '../size_config.dart';

class SubmitProposal extends StatefulWidget {
  final address = 'Farmgate';
  final name = 'Donald Trump';
  final status = 'Online';
  final price = 10000.00;
  final category = 'House Cleaning';
  final qstn = 'How often do you need the Service?';
  //PopUp(this.address, this.name, this.status, this.category, this.qstn);
  //final category = 'Laptop Servicing';
  //final address = 'Farmgate, Dhaka';
  final type = 'Contractual';
  final typeRate = 'Fixed Price';
  final xp = 'Entry Level';

  //final price = 10000.00;
  @override
  _SubmitProposalState createState() => _SubmitProposalState();
}

class _SubmitProposalState extends State<SubmitProposal> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height * 0.89,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Container()
              Container(
                height: getProportionateScreenHeight(40),
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(top: 10, left: 20),
                //alignment: Alignment.centerLeft,
                color: kPrimaryLightColor,
                child: Text(
                  'Computer Servicing',
                  style: TextStyle(
                    color: kTextColor,
                    fontFamily: 'Poppins',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10, left: 20),
                width: MediaQuery.of(context).size.width,
                color: kPrimaryLightColor,
                height: getProportionateScreenHeight(40),
                child: Text(
                  'Budget - ${widget.price}',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontFamily: 'Poppins',
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                color: kPrimaryLightColor,
                height: getProportionateScreenHeight(30),
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      height: getProportionateScreenHeight(50),
                      width: getProportionateScreenWidth(140),
                      child: Text(
                        'Location - ${widget.address}',
                        style: TextStyle(
                            color: kTextColor,
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: getProportionateScreenHeight(50),
                      width: getProportionateScreenWidth(10),
                      child: VerticalDivider(
                        color: kPrimaryColor,
                        width: 0,
                        thickness: 3,
                        endIndent: 5,
                        indent: 5,
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      height: getProportionateScreenHeight(50),
                      width: getProportionateScreenWidth(140),
                      child: Text(
                        'Job type- ${widget.type}',
                        style: TextStyle(
                          color: kTextColor,
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: kPrimaryLightColor,
                height: getProportionateScreenHeight(30),
                padding: EdgeInsets.only(left: 20),
                child: Container(
                  child: RatingBarIndicatorWidget(2.5, 377),
                ),
              ),
              Container(
                  padding: EdgeInsets.only(left: 30, top: 15),
                  child: Text(
                    'Available start date',
                    style: TextStyle(
                      color: kTextColor,
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              Container(
                width: getProportionateScreenWidth(200),
                padding: EdgeInsets.only(left: 30),
                child: TestPickerWidget(
                  'Select a date',
                  'WeekdayABBR, MonthABBR date',
                  Icons.arrow_drop_down,
                  false,
                ),
              ),
              Container(
                  padding: EdgeInsets.only(left: 30, top: 15),
                  child: Text(
                    'Estimated completion date',
                    style: TextStyle(
                      color: kTextColor,
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              Container(
                width: getProportionateScreenWidth(200),
                padding: EdgeInsets.only(left: 30),
                child: TestPickerWidget(
                    'Select a date',
                    'WeekdayABBR, MonthABBR date',
                    Icons.arrow_drop_down,
                    false),
              ),
              Container(
                  padding: EdgeInsets.only(left: 30, top: 15, bottom: 15),
                  child: Text(
                    'Expected salary (Optional)',
                    style: TextStyle(
                      color: kTextColor,
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: TextField(
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                  ),
                  cursorHeight: 20,
                  keyboardType: TextInputType.number,
                  autocorrect: false,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.only(left: 30, top: 15, bottom: 15),
                  child: Text(
                    'Letter to Client',
                    style: TextStyle(
                      color: kTextColor,
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: TextField(
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                  ),
                  cursorHeight: 20,
                  autocorrect: false,
                  keyboardType: TextInputType.multiline,
                  maxLines: 5,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    height: 105,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 2 / 3,
                    padding: EdgeInsets.only(right: 30),
                    height: 50,
                    child: DefaultButton(
                      text: 'SUBMIT PROPOSAL',
                      press: () {},
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
