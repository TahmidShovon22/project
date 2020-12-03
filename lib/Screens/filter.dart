import 'package:flutter/material.dart';
import 'package:project/Widgets/default_button.dart';
import 'package:project/Widgets/dropdown.dart';

import 'package:project/constants.dart';

import '../size_config.dart';

class Filter extends StatefulWidget {
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
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: ListView(
        children: [
          Container(
            color: kPrimaryLightColor,
            height: getProportionateScreenHeight(80),
            width: getProportionateScreenWidth(340),
            child: Row(
              children: [
                Container(
                  width: getProportionateScreenHeight(60),
                  height: getProportionateScreenWidth(60),
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: kTextColor,
                      width: 3,
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("Assets/Images/dp.jpg"),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: getProportionateScreenHeight(40),
                          width: getProportionateScreenWidth(288),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            widget.name,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: kTextColor,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Container(
                          height: getProportionateScreenHeight(40),
                          width: getProportionateScreenWidth(288),
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              Container(
                                child: Icon(
                                  Icons.location_pin,
                                  color: kPrimaryColor,
                                  size: 25,
                                ),
                              ),
                              Container(
                                child: FittedBox(
                                  child: Text(
                                    widget.address,
                                    style: TextStyle(
                                      color: kTextColor,
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 25, left: 25, top: 20),
            alignment: Alignment.center,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(
                    color: Colors.black, style: BorderStyle.solid, width: 0.80),
              ),
              child: DropDownWidget(
                'Category',
                Icons.arrow_drop_down,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 25, left: 25, top: 20),
            alignment: Alignment.center,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(
                    color: Colors.black, style: BorderStyle.solid, width: 0.80),
              ),
              child: DropDownWidget(
                'Sub-Category',
                Icons.arrow_drop_down,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 25, left: 25, top: 20),
            alignment: Alignment.center,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(
                    color: Colors.black, style: BorderStyle.solid, width: 0.80),
              ),
              child: DropDownWidget(
                'Location',
                Icons.location_pin,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 24, left: 24, top: 20),
            child: Card(
              elevation: 5,
              child: Container(
                  height: getProportionateScreenHeight(215),
                  width: getProportionateScreenWidth(320),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 0.80),
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 10, left: 15),
                        height: getProportionateScreenHeight(50),
                        alignment: Alignment.topLeft,
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
                        padding: EdgeInsets.only(right: 15),
                        height: getProportionateScreenHeight(35),
                        alignment: Alignment.topRight,
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
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              height: getProportionateScreenHeight(60),
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
                              height: getProportionateScreenHeight(60),
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
                              height: getProportionateScreenHeight(60),
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
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.only(
                          right: 20,
                        ),
                        width: getProportionateScreenWidth(320),
                        height: getProportionateScreenHeight(65),
                        child: DefaultButton(
                          text: 'JOB DETAILS',
                          press: () {},
                        ),
                      )
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
