import 'package:flutter/material.dart';
import 'package:project/size_config.dart';
import '../constants.dart';
import '../Widgets/default_button.dart';

class PopUp extends StatefulWidget {
  final address = 'Farmgate, Dhaka';
  final name = 'Donald Trump';
  final status = 'Online';
  final price = 10000.00;
  final category = 'House Cleaning';
  final qstn = 'How often do you need the Service?';
  //PopUp(this.address, this.name, this.status, this.category, this.qstn);
  @override
  _PopUpState createState() => _PopUpState();
}

class _PopUpState extends State<PopUp> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Card(
      elevation: 10,
      child: Container(
        alignment: Alignment.center,
        height: getProportionateScreenHeight(480),
        width: getProportionateScreenWidth(340),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: kPrimaryLightColor,
              height: getProportionateScreenHeight(80),
              width: getProportionateScreenWidth(340),
              child: Row(
                children: [
                  Container(
                    width: getProportionateScreenHeight(80),
                    height: getProportionateScreenWidth(60),
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
                  SizedBox(
                    width: getProportionateScreenWidth(120),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          widget.name,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: kTextColor,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              size: 15,
                              color: widget.status == 'Online'
                                  ? Colors.green
                                  : Colors.grey,
                            ),
                            Text(
                              widget.status,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: kTextColor,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  VerticalDivider(
                    color: kTextColor,
                    thickness: 3,
                    width: 0,
                    indent: getProportionateScreenHeight(15),
                    endIndent: getProportionateScreenHeight(15),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    width: getProportionateScreenWidth(120),
                    child: FittedBox(
                      child: Text(
                        'Price: ${widget.price}',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontFamily: 'Poppins',
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: getProportionateScreenHeight(240),
              width: getProportionateScreenWidth(340),
              child: Card(
                elevation: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: getProportionateScreenWidth(320),
                      height: getProportionateScreenHeight(70),
                      child: FittedBox(
                        child: Text(
                          'Service Categories: ${widget.category}',
                          style: TextStyle(
                            color: kTextColor,
                            fontFamily: 'Poppins',
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(320),
                      height: getProportionateScreenHeight(35),
                      alignment: Alignment.center,
                      child: Text(
                        '${widget.qstn}',
                        style: TextStyle(
                          color: kTextColor,
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      height: getProportionateScreenHeight(30),
                      width: getProportionateScreenWidth(280),
                      child: Row(children: [
                        Radio(
                          value: 'One time',
                          groupValue: null,
                          onChanged: null,
                        ),
                        Text(
                          'One time',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            color: kTextColor,
                          ),
                        ),
                      ]),
                    ),
                    Container(
                      height: getProportionateScreenHeight(30),
                      width: getProportionateScreenWidth(280),
                      child: Row(children: [
                        Radio(
                          value: 'Weekly',
                          groupValue: null,
                          onChanged: null,
                        ),
                        Text(
                          'Weekly',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            color: kTextColor,
                          ),
                        ),
                      ]),
                    ),
                    Container(
                      height: getProportionateScreenHeight(30),
                      width: getProportionateScreenWidth(280),
                      child: Row(children: [
                        Radio(
                          value: 'Monthly',
                          groupValue: null,
                          onChanged: null,
                        ),
                        Text(
                          'Monthly',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            color: kTextColor,
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: kPrimaryLightColor,
              height: getProportionateScreenHeight(80),
              width: getProportionateScreenWidth(340),
              child: Row(
                children: [
                  Container(
                    width: getProportionateScreenWidth(80),
                    child: Icon(
                      Icons.location_pin,
                      color: kPrimaryColor,
                      size: 50,
                    ),
                  ),
                  Container(
                    width: getProportionateScreenWidth(240),
                    child: Text(
                      widget.address,
                      style: TextStyle(
                        color: kTextColor,
                        fontFamily: 'Poppins',
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: kPrimaryLightColor,
              height: getProportionateScreenHeight(80),
              width: getProportionateScreenWidth(340),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DefaultButton(
                    text: 'CANCEL',
                    press: () {},
                  ),
                  DefaultButton(
                    text: 'BOOK SERVICE',
                    press: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
