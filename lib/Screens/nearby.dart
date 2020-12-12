import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project/Widgets/rating_bar_indicator.dart';

import '../constants.dart';

class Nearby extends StatefulWidget {
  final name = 'Donald Trump';
  final address = 'Farmgate';
  final category = 'House Cleaning';
  final rated = 3.5;
  @override
  _NearbyState createState() => _NearbyState();
}

class _NearbyState extends State<Nearby> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Container(
          height: constraints.maxHeight -
              MediaQuery.of(context).padding.top -
              MediaQuery.of(context).padding.bottom,
          width: constraints.maxWidth,
          child: Column(
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                height: constraints.maxHeight * 0.15,
                child: Text(
                  'Nearby "${widget.category}" Services in ${widget.address} are',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    color: kTextColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                height: constraints.maxHeight * 0.85,
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  children: List.generate(
                    3,
                    (i) => Card(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      elevation: 5,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: constraints.maxHeight * 0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(
                              color: Colors.black,
                              style: BorderStyle.solid,
                              width: 1),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: constraints.maxWidth * 0.35,
                              height: constraints.maxHeight * 0.15,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.contain,
                                  image: AssetImage("Assets/Images/pc.png"),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              width: constraints.maxWidth * 0.45,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    height: constraints.maxHeight * 0.05,
                                    child: Text(
                                      widget.name,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: kTextColor,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    height: constraints.maxHeight * 0.04,
                                    child: Text(
                                      widget.name,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: kTextColor,
                                        fontFamily: 'Poppins',
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    height: constraints.maxHeight * 0.05,
                                    child: RatingBarIndicatorWidget(
                                      rated: widget.rated,
                                      showNumber: false,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
