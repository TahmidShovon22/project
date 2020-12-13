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
        return Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              height: constraints.maxHeight -
                  MediaQuery.of(context).padding.top -
                  MediaQuery.of(context).padding.bottom,
              width: constraints.maxWidth,
              child: SingleChildScrollView(
                child: Column(
                  children: List.generate(
                    3,
                    (i) => Container(
                      height: constraints.maxHeight * 0.32,
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Card(
                            elevation: 5,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: constraints.maxWidth * 0.01),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                border: Border.all(
                                    color: Colors.black,
                                    style: BorderStyle.solid,
                                    width: 1),
                              ),
                              child: Column(
                                //mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: constraints.maxHeight * 0.70,
                                    child: Row(
                                      children: [
                                        Container(
                                          width: constraints.maxWidth * 0.35,
                                          height: constraints.maxHeight * 0.50,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.contain,
                                              image: AssetImage(
                                                  "Assets/Images/pc.png"),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          //alignment: Alignment.bottomLeft,
                                          width: constraints.maxWidth * 0.55,
                                          height: constraints.maxHeight * 0.70,
                                          padding: EdgeInsets.only(
                                              right:
                                                  constraints.maxWidth * 0.01,
                                              left: constraints.maxWidth * 0.01,
                                              top:
                                                  constraints.maxHeight * 0.04),
                                          child: FittedBox(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  height:
                                                      constraints.maxHeight *
                                                          0.18,
                                                  child: FittedBox(
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
                                                ),
                                                Container(
                                                  height:
                                                      constraints.maxHeight *
                                                          0.12,
                                                  child: IntrinsicHeight(
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Container(
                                                          child: FittedBox(
                                                            child: Text(
                                                              widget.name,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: TextStyle(
                                                                color:
                                                                    kTextColor,
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        VerticalDivider(
                                                          thickness: 2,
                                                          color: Colors.black,
                                                          indent: constraints
                                                                  .maxHeight *
                                                              0.01,
                                                          endIndent: constraints
                                                                  .maxHeight *
                                                              0.01,
                                                        ),
                                                        Container(
                                                          child: FittedBox(
                                                            child: Text(
                                                              '৳${widget.price}',
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: TextStyle(
                                                                color:
                                                                    kTextColor,
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height:
                                                      constraints.maxHeight *
                                                          0.35,
                                                  child: FittedBox(
                                                    child: Text(
                                                      '30% Off',
                                                      style: TextStyle(
                                                        color: Colors.green,
                                                        fontFamily: 'Poppins',
                                                        fontSize: 34,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: constraints.maxHeight * 0.22,
                                    alignment: Alignment.center,
                                    child: DefaultButton(
                                      text: 'VIEW DETAILS',
                                      press: () {},
                                      size: 18,
                                      givenWidth: constraints.maxWidth * 0.9,
                                      givenHeight: constraints.maxHeight * 0.18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
  /*return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return 
        );
      },
    );*/
}
