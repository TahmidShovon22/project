import 'package:flutter/material.dart';
import 'package:project/Widgets/default_button.dart';
import 'package:project/Widgets/rating_bar_indicator.dart';
import '../constants.dart';
import '../size_config.dart';

class Invite extends StatefulWidget {
  final name = 'Donald Trump';
  //final status = 'Online';
  final rated = 3.5;
  final reviews = 15;
  //final hired = 40;
  final address = 'Farmgate, Dhaka';

  final price = 10000.00;
  final category = 'House Cleaning';

  //PopUp(this.address, this.name, this.status, this.category, this.qstn);
  @override
  _InviteState createState() => _InviteState();
}

class _InviteState extends State<Invite> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Card(
      elevation: 10,
      child: Container(
        height: getProportionateScreenHeight(220),
        width: getProportionateScreenWidth(320),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: kPrimaryLightColor,
              height: getProportionateScreenHeight(80),
              width: getProportionateScreenWidth(320),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 25, right: 10),
                    width: getProportionateScreenWidth(60),
                    height: getProportionateScreenHeight(60),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("Assets/Images/dp.jpg"),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    height: getProportionateScreenHeight(100),
                    width: getProportionateScreenWidth(200),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.name,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: kTextColor,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Container(
                          height: getProportionateScreenHeight(42),
                          child: FittedBox(
                              fit: BoxFit.contain,
                              child: RatingBarIndicatorWidget(
                                  widget.rated, widget.reviews)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: getProportionateScreenWidth(160),
                  height: getProportionateScreenHeight(140),
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '${widget.category}',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Container(
                        height: 5,
                        //width: double.infinity,
                      ),
                      Container(
                        width: double.infinity,
                        child: Text(
                          'Location - ${widget.address}',
                          style: TextStyle(
                            color: kTextColor,
                            fontFamily: 'Poppins',
                            //fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      Container(
                        height: 5,
                        width: double.infinity,
                      ),
                      Container(
                        width: double.infinity,
                        child: Text(
                          'Job type - Contractual',
                          style: TextStyle(
                            color: kTextColor,
                            fontFamily: 'Poppins',
                            //fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: getProportionateScreenWidth(160),
                  height: getProportionateScreenHeight(140),
                  alignment: Alignment.center,
                  //color: Colors.blue,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(top: 20),
                        height: getProportionateScreenHeight(70),
                        child: Text(
                          'Budget - ${widget.price}',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Container(
                        width: getProportionateScreenWidth(120),
                        child: DefaultButton(
                          text: 'INVITE',
                          press: () {},
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
