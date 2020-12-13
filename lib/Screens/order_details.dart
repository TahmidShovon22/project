import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project/Widgets/default_button.dart';

import '../constants.dart';

class OrderDetails extends StatefulWidget {
  final name = 'Donald Trump';
  final address = 'Farmgate';
  final category = 'House Cleaning';
  final rated = 3.5;
  final subtotal = 10000.00;
  final equipCost = 4000.00;
  final additionalCost = 2000.00;
  final discount = 1000.00;

  @override
  _OrderDetailsState createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  //double total =;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Container(
          color: Colors.white,
          height: constraints.maxHeight -
              MediaQuery.of(context).padding.top -
              MediaQuery.of(context).padding.bottom,
          width: constraints.maxWidth,
          padding: EdgeInsets.symmetric(
            horizontal: constraints.maxWidth * 0.06,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: constraints.maxHeight * 0.25,
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: constraints.maxWidth * 0.03),
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: constraints.maxHeight,
                            child: Row(
                              children: [
                                Container(
                                  width: constraints.maxWidth * 0.35,
                                  height: constraints.maxHeight * 0.50,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.contain,
                                      image: AssetImage("Assets/Images/pc.png"),
                                    ),
                                  ),
                                ),
                                Container(
                                  //alignment: Alignment.bottomLeft,
                                  width: constraints.maxWidth * 0.55,
                                  height: constraints.maxHeight,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: constraints.maxWidth * 0.02,
                                      vertical: constraints.maxHeight * 0.04),
                                  child: FittedBox(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: constraints.maxHeight * 0.30,
                                          child: FittedBox(
                                            child: Text(
                                              widget.category,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: kTextColor,
                                                fontFamily: 'Poppins',
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: constraints.maxHeight * 0.15,
                                          child: FittedBox(
                                            child: Text(
                                              'Location - ${widget.address}',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: kTextColor,
                                                fontFamily: 'Poppins',
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: constraints.maxHeight * 0.15,
                                          child: FittedBox(
                                            child: Text(
                                              'Job type - Contractual',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: kTextColor,
                                                fontFamily: 'Poppins',
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: constraints.maxHeight * 0.15,
                                          child: FittedBox(
                                            child: Text(
                                              'Date - ${DateFormat('dd/M/yyyy').format(DateTime.now())}',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: kTextColor,
                                                fontFamily: 'Poppins',
                                                fontSize: 12,
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
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                height: constraints.maxHeight * 0.05,
                width: constraints.maxWidth * 0.6,
                margin: EdgeInsets.only(
                  bottom: constraints.maxHeight * 0.02,
                ),
                child: FittedBox(
                  child: Text(
                    'Service Completion Date :',
                    style: TextStyle(color: kTextColor, fontSize: 20),
                  ),
                ),
              ),
              Container(
                height: constraints.maxHeight * 0.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: constraints.maxHeight * 0.005),
                      width: constraints.maxWidth * 0.2,
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              child: FittedBox(
                                child: Text(
                                  '${DateFormat('d').format(DateTime.now())}',
                                  style: TextStyle(
                                      color: kTextColor,
                                      fontFamily: 'Poppins',
                                      fontSize: 36,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              child: FittedBox(
                                child: Text(
                                  '${DateFormat('MMM').format(DateTime.now())}',
                                  style: TextStyle(
                                    color: kTextColor,
                                    fontFamily: 'Poppins',
                                    //fontSize: constraints.maxHeight * 0.02,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    VerticalDivider(
                      color: Colors.black,
                      thickness: 2,
                      indent: constraints.maxHeight * 0.005,
                      endIndent: constraints.maxHeight * 0.005,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: constraints.maxWidth * 0.05),
                      width: constraints.maxWidth * 0.6,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: FittedBox(
                              child: Text(
                                '${DateFormat('EEEE').format(DateTime.now())}',
                                style: TextStyle(
                                    color: kTextColor,
                                    fontFamily: 'Poppins',
                                    fontSize: constraints.maxHeight * 0.025),
                              ),
                            ),
                          ),
                          Container(
                            child: FittedBox(
                              child: Text(
                                '${DateFormat('h:mm a').format(DateTime.now())} - ${DateFormat('h:mm a').format(DateTime.now())}',
                                style: TextStyle(
                                  color: kTextColor,
                                  fontFamily: 'Poppins',
                                  fontSize: constraints.maxHeight * 0.025,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: constraints.maxHeight * 0.38,
                width: constraints.maxWidth * 0.88,
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        margin:
                            EdgeInsets.only(top: constraints.maxHeight * 0.04),
                        child: Row(
                          children: [
                            Container(
                              width: constraints.maxWidth * 0.44,
                              child: Text(
                                'Service Provider :',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: kTextColor,
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            Container(
                              width: constraints.maxWidth * 0.44,
                              child: Text(
                                '${widget.name}',
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
                        width: constraints.maxWidth * 0.8,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Colors.black, width: 2.0),
                          ),
                        ),
                      ),
                      /*Divider(
                        color: Colors.black,
                        thickness: 1,
                        endIndent: constraints.maxWidth * 0.2,
                      ),*/
                      Container(
                        margin:
                            EdgeInsets.only(top: constraints.maxHeight * 0.01),
                        child: Text(
                          'Bill and payment : ',
                          style: TextStyle(
                            color: kTextColor,
                            fontFamily: 'Poppins',
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(top: constraints.maxHeight * 0.01),
                        child: Row(
                          children: [
                            Container(
                              width: constraints.maxWidth * 0.44,
                              child: Text(
                                'Subtotal -',
                                style: TextStyle(
                                  color: kTextColor,
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            Container(
                              width: constraints.maxWidth * 0.44,
                              child: Text(
                                '${widget.subtotal.toStringAsFixed(0)} ৳',
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
                        margin:
                            EdgeInsets.only(top: constraints.maxHeight * 0.01),
                        child: Row(
                          children: [
                            Container(
                              width: constraints.maxWidth * 0.44,
                              child: Text(
                                'Equipment cost -',
                                style: TextStyle(
                                  color: kTextColor,
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            Container(
                              width: constraints.maxWidth * 0.44,
                              child: Text(
                                '${widget.equipCost.toStringAsFixed(0)} ৳',
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
                        margin:
                            EdgeInsets.only(top: constraints.maxHeight * 0.01),
                        child: Row(
                          children: [
                            Container(
                              width: constraints.maxWidth * 0.44,
                              child: Text(
                                'Additional cost -',
                                style: TextStyle(
                                  color: kTextColor,
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            Container(
                              width: constraints.maxWidth * 0.44,
                              child: Text(
                                '${widget.additionalCost.toStringAsFixed(0)} ৳',
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
                        margin: EdgeInsets.symmetric(
                          vertical: constraints.maxHeight * 0.01,
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: constraints.maxWidth * 0.44,
                              child: Text(
                                'Discount -',
                                style: TextStyle(
                                  color: kTextColor,
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            Container(
                              width: constraints.maxWidth * 0.44,
                              child: Text(
                                '${widget.discount.toStringAsFixed(0)} ৳',
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
                        width: constraints.maxWidth * 0.8,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Colors.black, width: 2.0),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: constraints.maxHeight * 0.01,
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: constraints.maxWidth * 0.44,
                              child: Text(
                                'Total -',
                                style: TextStyle(
                                  color: kTextColor,
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            Container(
                              width: constraints.maxWidth * 0.44,
                              child: Text(
                                '${(widget.subtotal + widget.additionalCost + widget.equipCost - widget.discount).toStringAsFixed(0)} ৳',
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
                    ],
                  ),
                ),
              ),
              Container(
                height: constraints.maxHeight * 0.20,
              )
            ],
          ),
        );
      },
    );
  }
}
