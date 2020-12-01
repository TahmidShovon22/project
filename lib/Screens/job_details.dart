import 'package:flutter/material.dart';
import 'package:project/Widgets/rating_bar_indicator.dart';
import 'package:project/constants.dart';
import 'package:project/size_config.dart';
import '../Widgets/default_button.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class JobDetails extends StatefulWidget {
  final rated = 3.5;
  final reviews = 15;
  final bio =
      '"When you know that your time has come around,\nYou know you\'ll be prepared for it.\nSay your last goodbyes to everyone,\nDrink and say a prayer for it.\nWhen you\'re lying in your sleep, when you\'re lying in your bed,\nAnd you wake from your dreams to go dancing with the dead."';
  @override
  _JobDetailsState createState() => _JobDetailsState();
}

class _JobDetailsState extends State<JobDetails> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: getProportionateScreenHeight(360),
                    width: double.infinity,
                    child: Container(
                      color: Theme.of(context).primaryColorLight,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10, left: 20),
                            height: getProportionateScreenHeight(40),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Computer Servicing',
                              style: TextStyle(
                                  color: kTextColor,
                                  fontFamily: 'Poppins',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            height: getProportionateScreenHeight(40),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Budget - 15000',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontFamily: 'Poppins',
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            height: getProportionateScreenHeight(40),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Location - Gulshan 1',
                                  style: TextStyle(
                                      color: kTextColor,
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                VerticalDivider(
                                  color: kPrimaryColor,
                                  width: 0,
                                  thickness: 3,
                                  endIndent: 5,
                                  indent: 5,
                                ),
                                Text(
                                  'Job type - Contractual',
                                  style: TextStyle(
                                    color: kTextColor,
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: getProportionateScreenHeight(40),
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(
                              bottom: 10,
                              right: 20,
                            ),
                            child: Container(
                              margin: EdgeInsets.only(left: 20),
                              child: RatingBarIndicatorWidget(
                                  widget.rated, widget.reviews),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(180),
                    width: double.infinity,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(100, 50, 100, 20),
                      color: Colors.white,
                      child: Image.asset(
                        'Assets/Images/pc.png',
                      ),
                    ),
                  ),
                  Positioned(
                    top: getProportionateScreenHeight(140),
                    left: getProportionateScreenWidth(280),
                    child: Container(
                      width: getProportionateScreenWidth(80),
                      height: getProportionateScreenHeight(80),
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
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(240),
            width: double.infinity,
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(20),
                color: Colors.white,
                child: Text(
                  '${widget.bio}',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: getProportionateScreenHeight(120),
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 35, horizontal: 60),
            width: double.infinity,
            child: DefaultButton(
              text: 'CREATE PROPOSAL',
              press: () {},
            ),
          ),
        ],
      ),
    );
  }
}
