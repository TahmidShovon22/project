import 'package:flutter/material.dart';
import './constants.dart';
import './Widgets/default_button.dart';

class PopUp extends StatefulWidget {
  final address = 'Farmgate, Dhaka, Bangladesh, Asia, Earth';
  final name = 'Tahmid Anam';
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
    return SizedBox(
      height: 480,
      width: 340,
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: kPrimaryLightColor,
              height: 80,
              width: 340,
              child: Row(
                children: [
                  Container(
                    width: 80,
                    height: 60,
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
                    width: 120,
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
                    indent: 15,
                    endIndent: 15,
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    width: 120,
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
              height: 240,
              width: 340,
              child: Card(
                elevation: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 320,
                      height: 70,
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
                      width: 320,
                      height: 35,
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
                      height: 30,
                      width: 280,
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
                      height: 30,
                      width: 280,
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
                      height: 30,
                      width: 280,
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
              height: 80,
              width: 340,
              child: Row(
                children: [
                  Container(
                    width: 80,
                    child: Icon(
                      Icons.location_pin,
                      color: kPrimaryColor,
                      size: 50,
                    ),
                  ),
                  Container(
                    width: 240,
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
              height: 80,
              width: 340,
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
