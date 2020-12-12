import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project/Widgets/default_button.dart';
import 'package:project/Widgets/rating_bar_indicator.dart';

import '../constants.dart';

class NearbyServices extends StatefulWidget {
  final name = 'Donald Trump';
  final address = 'Farmgate';
  final category = 'House Cleaning';
  final rated = 3.5;
  final price = 10000.00;
  @override
  _NearbyServicesState createState() => _NearbyServicesState();
}

class _NearbyServicesState extends State<NearbyServices> {
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
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black,
                      style: BorderStyle.solid,
                      width: 1.5),
                ),
                height: constraints.maxHeight * 0.08,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                    margin: EdgeInsets.only(
                      right: 20,
                    ),
                    child: Icon(
                      Icons.shopping_cart,
                      color: kPrimaryColor,
                    ),
                  ),
                  Text(
                    'Total: ৳${widget.price.toStringAsFixed(0)}',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      color: kTextColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ]),
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: constraints.maxHeight * 0.22,
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
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: constraints.maxHeight * 0.58,
                width: constraints.maxWidth,
                child: SingleChildScrollView(
                  child: Column(
                    children: List.generate(
                      6,
                      (i) => Container(
                        alignment: Alignment.topCenter,
                        height: constraints.maxHeight * 0.07,
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: Colors.black,
                                style: BorderStyle.solid,
                                width: 1),
                          ),
                          child: ListTile(
                            onTap: () {},
                            title: Text(
                              'Full Home Deep Cleaning',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                color: kTextColor,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            trailing: IconButton(
                              icon: Icon(Icons.arrow_forward),
                              onPressed: () {},
                              color: kPrimaryColor,
                              iconSize: 26,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 20),
                height: constraints.maxHeight * 0.12,
                alignment: Alignment.center,
                child: DefaultButton(
                  text: 'CONTINUE',
                  press: () {},
                  size: 18,
                  givenWidth: constraints.maxWidth * 0.6,
                  givenHeight: constraints.maxHeight * 0.07,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
