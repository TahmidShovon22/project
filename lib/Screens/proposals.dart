import 'package:flutter/material.dart';
import 'package:flutter_multi_carousel/carousel.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:intl/intl.dart';
import 'package:project/Widgets/default_button.dart';
import 'package:project/Widgets/rating_bar_indicator.dart';
import 'package:project/constants.dart';

import '../size_config.dart';

class Proposal extends StatefulWidget {
  final name = 'Donald Trump';
  //final status = 'Online';
  final rated = 3.5;
  final reviews = 15;
  //final hired = 40;
  final bio =
      '"When you know that your time has come around,\nYou know you\'ll be prepared for it.\nSay your last goodbyes to everyone,\nDrink and say a prayer for it.\nWhen you\'re lying in your sleep, when you\'re lying in your bed,\nAnd you wake from your dreams to go dancing with the dead."';

  final address = 'Farmgate';

  final status = 'Online';
  final price = 10000.00;
  final category = 'House Cleaning';
  final qstn = 'How often do you need the Service?';
  final type = 'Contractual';

  @override
  _ProposalState createState() => _ProposalState();
}

class _ProposalState extends State<Proposal> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            //padding: EdgeInsets.all(15),
            child: Carousel(
              height: 250,
              width: 200,
              initialPage: 3,
              allowWrap: false,
              type: Types.slideSwiper,
              onCarouselTap: (i) {
                print("onTap $i");
              },
              showIndicator: false,
              indicatorType: null,
              arrowColor: Colors.black,
              axis: Axis.horizontal,
              showArrow: true,
              children: List.generate(
                7,
                (i) => Card(
                  elevation: 5,
                  child: FittedBox(
                    child: Container(
                      height: 240,
                      width: 200,
                      padding: EdgeInsets.only(top: 15),
                      decoration: BoxDecoration(
                        color: kPrimaryLightColor,
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(
                            color: kTextColor,
                            style: BorderStyle.solid,
                            width: 1),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: getProportionateScreenWidth(120),
                            height: getProportionateScreenHeight(120),
                            margin: EdgeInsets.only(bottom: 15),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("Assets/Images/dp.jpg"),
                              ),
                            ),
                          ),
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
                            margin: EdgeInsets.all(5),
                            //height: getProportionateScreenHeight(42),
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: RatingBarIndicator(
                                itemSize: 20,
                                //textDirection: TextDirection.ltr,
                                rating: widget.rated,
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemBuilder: (context, index) => Icon(
                                  Icons.star,
                                  color: kPrimaryColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 30),
                height: getProportionateScreenHeight(45),
                width: MediaQuery.of(context).size.width * 2 / 3,
                child: Text(
                  '${widget.name}',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Poppins',
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: getProportionateScreenHeight(15),
                padding: EdgeInsets.only(right: 30),
                width: MediaQuery.of(context).size.width / 3,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: RatingBarIndicator(
                    itemSize: 22,
                    rating: widget.rated,
                    itemCount: 5,
                    itemBuilder: (context, index) => Icon(
                      Icons.star,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(top: 10, left: 30),
            //alignment: Alignment.centerLeft,

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
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Divider(
              color: Colors.grey,
              thickness: 2,
            ),
          ),
          Container(
            height: getProportionateScreenHeight(35),
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 30),
                  width: MediaQuery.of(context).size.width / 2,
                  child: Text(
                    'Location - ${widget.address}',
                    style: TextStyle(
                      color: kTextColor,
                      fontFamily: 'Poppins',
                      fontSize: 14,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 30),
                  width: MediaQuery.of(context).size.width / 2,
                  child: Text(
                    'Job type- ${widget.type}',
                    style: TextStyle(
                      color: kTextColor,
                      fontFamily: 'Poppins',
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: getProportionateScreenHeight(35),
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 30),
                  width: MediaQuery.of(context).size.width / 2,
                  child: Text(
                    'Budget - ${widget.price}',
                    style: TextStyle(
                      color: kTextColor,
                      fontFamily: 'Poppins',
                      fontSize: 14,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 20),
                  width: MediaQuery.of(context).size.width / 2,
                  child: Text(
                    'Date- ${DateFormat('d/M/y').format(DateTime.now())}',
                    style: TextStyle(
                      color: kTextColor,
                      fontFamily: 'Poppins',
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(top: 5, left: 30),
            child: Text(
              'Letter',
              style: TextStyle(
                color: kTextColor,
                fontFamily: 'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Divider(
              color: Colors.grey,
              thickness: 2,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 35),
            child: Text(
              '${widget.bio}',
              style: TextStyle(
                color: kTextColor,
                fontFamily: 'Poppins',
                fontSize: 13,
              ),
            ),
            width: MediaQuery.of(context).size.width,
            height: getProportionateScreenHeight(180),
          ),
          Container(
            height: getProportionateScreenHeight(60),
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: DefaultButton(
                    text: 'REJECT',
                    press: () {},
                    size: 19,
                  ),
                ),
                Container(
                  child: FittedBox(
                    child: DefaultButton(
                      text: 'START CONVERSATION',
                      press: () {},
                      size: 19,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
