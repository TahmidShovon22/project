import 'package:flutter/material.dart';
import 'package:project/Widgets/default_button.dart';
import 'package:project/Widgets/rating_bar.dart';

import '../constants.dart';
import '../size_config.dart';

class FeedbackCard extends StatefulWidget {
  final name = 'Donald Trump';
  //final status = 'Online';
  final rated = 3.5;
  final reviews = 15;
  //final hired = 40;
  final address = 'Farmgate';

  final price = 10000.00;
  final category = 'House Cleaning';
  @override
  _FeedbackCardState createState() => _FeedbackCardState();
}

class _FeedbackCardState extends State<FeedbackCard> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Material(
        child: Container(
          alignment: Alignment.center,
          child: Card(
            elevation: 10,
            child: Container(
              height: getProportionateScreenHeight(520),
              width: getProportionateScreenWidth(320),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    color: kPrimaryLightColor,
                    height: getProportionateScreenHeight(95),
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                padding: EdgeInsets.only(bottom: 10),
                                width: double.infinity,
                                child: Text(
                                  'Location - ${widget.address}\nJob type - Contractual',
                                  style: TextStyle(
                                    color: kTextColor,
                                    fontFamily: 'Poppins',
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: getProportionateScreenWidth(160),
                        height: getProportionateScreenHeight(50),
                        child: Text(
                          '${widget.category}',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: getProportionateScreenWidth(160),
                        height: getProportionateScreenHeight(50),
                        child: Text(
                          'Budget - ${widget.price}',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    //color: Colors.red,
                    alignment: Alignment.center,
                    width: getProportionateScreenWidth(320),
                    height: getProportionateScreenHeight(70),
                    child: Text(
                      'Please Share Your Experience About Your Service Provider!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: kTextColor,
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    height: getProportionateScreenHeight(50),
                    width: getProportionateScreenWidth(320),
                    child: RatingBarWidget(),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 25),
                    alignment: Alignment.centerLeft,
                    height: getProportionateScreenHeight(40),
                    width: getProportionateScreenWidth(320),
                    child: Text(
                      'Add a Review',
                      style: TextStyle(
                        color: kTextColor,
                        fontFamily: 'Poppins',
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: TextField(
                      //textInputAction: TextInputAction.,
                      minLines: 5,
                      maxLines: 5,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                      ),
                      cursorHeight: 30,
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
                    margin: EdgeInsets.only(left: 20, right: 20, top: 0),
                    width: getProportionateScreenWidth(320),
                    child: DefaultButton(
                      text: 'SUBMIT',
                      press: () {},
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
