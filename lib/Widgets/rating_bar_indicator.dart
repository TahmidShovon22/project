import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../constants.dart';
import '../size_config.dart';

class RatingBarIndicatorWidget extends StatelessWidget {
  final rated;
  final reviews;
  RatingBarIndicatorWidget(this.rated, this.reviews);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Row(
      children: [
        Container(
          height: getProportionateScreenHeight(40),
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(
            bottom: 10,
            right: 10,
          ),
          child: Text(
            '$rated',
            style: TextStyle(
              color: kPrimaryColor,
              fontFamily: 'Poppins',
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: getProportionateScreenHeight(40),
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(
            bottom: 10,
            right: 10,
          ),
          child: RatingBarIndicator(
            itemSize: 25,
            textDirection: TextDirection.ltr,
            rating: rated,
            direction: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
          ),
        ),
        Container(
          height: getProportionateScreenHeight(40),
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(
            bottom: 10,
            right: 10,
          ),
          child: Text(
            '$reviews Reviews',
            style: TextStyle(
              color: kPrimaryColor,
              fontFamily: 'Poppins',
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
