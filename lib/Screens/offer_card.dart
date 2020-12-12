import 'package:flutter/material.dart';
import 'package:project/Widgets/default_button.dart';

import '../constants.dart';

class OfferCard extends StatefulWidget {
  final name = 'Donald Trump';
  final address = 'Farmgate';
  final category = 'House Cleaning';
  final rated = 3.5;
  final price = 10000.00;
  @override
  _OfferCardState createState() => _OfferCardState();
}

class _OfferCardState extends State<OfferCard> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Card(
          elevation: 5,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: constraints.maxHeight * 0.305,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(
                  color: Colors.black, style: BorderStyle.solid, width: 1),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      width: constraints.maxWidth * 0.32,
                      height: constraints.maxHeight * 0.15,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage("Assets/Images/pc.png"),
                        ),
                      ),
                    ),
                    Container(
                      width: constraints.maxWidth * 0.58,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            //padding: EdgeInsets.only(top: 10),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              widget.category,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: kTextColor,
                                fontFamily: 'Poppins',
                                fontSize: 18,
                              ),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 20),
                                  //width: constraints.maxWidth * 0.25,
                                  child: Text(
                                    widget.name,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: kTextColor,
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                VerticalDivider(
                                  thickness: 2,
                                  color: Colors.black,
                                  indent: 20,
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 20),
                                  //width: constraints.maxWidth * 0.2,
                                  child: Text(
                                    '৳${widget.price}',
                                    textAlign: TextAlign.left,
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
                            margin: EdgeInsets.only(top: 10),
                            alignment: Alignment.centerLeft,
                            height: constraints.maxHeight * 0.05,
                            child: Text(
                              '30% Off',
                              style: TextStyle(
                                color: Colors.green,
                                fontFamily: 'Poppins',
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  height: constraints.maxHeight * 0.10,
                  alignment: Alignment.center,
                  child: DefaultButton(
                    text: 'VIEW DETAILS',
                    press: () {},
                    size: 18,
                    givenWidth: constraints.maxWidth * 0.9,
                    givenHeight: constraints.maxHeight * 0.05,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
