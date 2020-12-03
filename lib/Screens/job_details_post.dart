import 'package:flutter/material.dart';
import 'package:project/Widgets/default_button.dart';
import 'package:project/constants.dart';
import '../size_config.dart';

class JobDetailsPost extends StatefulWidget {
  final category = 'Laptop Servicing';
  final address = 'Farmgate, Dhaka';
  final type = 'Contactual';
  final typeRate = 'Fixed Price';
  final xp = 'Entry Level';
  final price = 10000.00;
  final detail =
      '"When you know that your time has come around,\nYou know you\'ll be prepared for it.\nSay your last goodbyes to everyone,\nDrink and say a prayer for it.\nWhen you\'re lying in your sleep, when you\'re lying in your bed,\nAnd you wake from your dreams to go dancing with the dead."';

  @override
  _JobDetailsPostState createState() => _JobDetailsPostState();
}

class _JobDetailsPostState extends State<JobDetailsPost> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20),
                  width: MediaQuery.of(context).size.width * 0.66,
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.075,
                        alignment: Alignment.bottomLeft,
                        child: FittedBox(
                          child: Text(
                            widget.category,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: kTextColor,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.075,
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: Text(
                                'Location- ${widget.address}',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: kTextColor,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: Text(
                                'Job type- ${widget.type}',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: kTextColor,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 20),
                  width: MediaQuery.of(context).size.width * 0.34,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.bottomCenter,
                        height: MediaQuery.of(context).size.height * 0.075,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: getProportionateScreenHeight(30),
                              width: MediaQuery.of(context).size.width * 0.10,
                              child: TextButton(
                                onPressed: null,
                                child: Text(
                                  'Edit',
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: getProportionateScreenHeight(30),
                              width: MediaQuery.of(context).size.width * 0.185,
                              child: TextButton(
                                onPressed: null,
                                child: Text(
                                  'Delete post',
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.075,
                        alignment: Alignment.center,
                        child: Text(
                          'Budget- ${widget.price}',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: kPrimaryColor,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.black,
            indent: 15,
            endIndent: 15,
            thickness: 2,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: MediaQuery.of(context).size.height * 0.03,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.44,
                  child: Text(
                    'Job type- ${widget.typeRate}',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: kTextColor,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  width: MediaQuery.of(context).size.width * 0.44,
                  child: Text(
                    'Experience- ${widget.xp}',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: kTextColor,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.05,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 20, right: 20, top: 15),
            //margin: EdgeInsets.only(top: 10, bottom: 10),
            child: Text(
              'Job Description',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  color: kTextColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.50,
            alignment: Alignment.topLeft,
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            //margin: EdgeInsets.only(top: 10, bottom: 10),
            child: Text(
              '${widget.detail}',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: kTextColor,
                fontSize: 18,
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.142687,
            padding: EdgeInsets.only(bottom: 35, left: 20, right: 20, top: 35),
            width: double.infinity,
            //padding: EdgeInsets.symmetric(horizontal: 10),
            //alignment: Alignment.center,
            child: DefaultButton(press: () {}, text: 'INVITE'),
          ),
        ],
      ),
    );
  }
}
