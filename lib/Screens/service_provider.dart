import 'package:flutter/material.dart';
import 'package:project/Widgets/default_button.dart';

import '../constants.dart';

class ServiceProvider extends StatefulWidget {
  final name = 'Donald Trump';
  final completed = 25;
  final proposal = 35;
  final happy = 12;
  final invitation = 5;
  final category = 'House Cleaning';
  final address = 'Farmgate';

  @override
  _ServiceProviderState createState() => _ServiceProviderState();
}

class _ServiceProviderState extends State<ServiceProvider> {
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
          child: Column(
            children: [
              Container(
                height: constraints.maxHeight * 0.15,
                color: kPrimaryLightColor,
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Container(
                      width: constraints.maxWidth * 0.15,
                      // height: constraints.maxHeight * 0.13,
                      margin: EdgeInsets.only(right: 35),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: kTextColor,
                          width: 2,
                        ),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("Assets/Images/dp.jpg"),
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
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
                            //height: constraints.maxHeight * 0.090,
                            //alignment: Alignment.centerLeft,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Icon(
                                    Icons.location_pin,
                                    color: kPrimaryColor,
                                    size: 25,
                                  ),
                                ),
                                Container(
                                  child: FittedBox(
                                    child: Text(
                                      widget.address,
                                      style: TextStyle(
                                        color: kTextColor,
                                        fontFamily: 'Poppins',
                                        fontSize: 14,
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
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                height: constraints.maxHeight * 0.08,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: constraints.maxHeight * 0.46,
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: constraints.maxHeight * 0.22,
                          width: constraints.maxWidth * 0.42,
                          child: Card(
                            child: Center(
                              child: ListTile(
                                title: Text(
                                  '${widget.completed}',
                                  style: TextStyle(
                                    color: kTextColor,
                                    fontFamily: 'Poppins',
                                    fontSize: 60,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                subtitle: Text(
                                  'Completed Job',
                                  style: TextStyle(
                                    color: kTextColor,
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            elevation: 3,
                            color: Colors.green[300],
                          ),
                        ),
                        Container(
                          height: constraints.maxHeight * 0.22,
                          width: constraints.maxWidth * 0.42,
                          child: Card(
                            child: Center(
                              child: ListTile(
                                title: Text(
                                  '${widget.happy}',
                                  style: TextStyle(
                                    color: kTextColor,
                                    fontFamily: 'Poppins',
                                    fontSize: 60,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                subtitle: Text(
                                  'Happy Client',
                                  style: TextStyle(
                                    color: kTextColor,
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            elevation: 3,
                            color: Colors.red[300],
                          ),
                        ),
                      ],
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: constraints.maxHeight * 0.22,
                            width: constraints.maxWidth * 0.42,
                            child: Card(
                              child: Center(
                                child: ListTile(
                                  title: Text(
                                    '${widget.proposal}',
                                    style: TextStyle(
                                      color: kTextColor,
                                      fontFamily: 'Poppins',
                                      fontSize: 60,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  subtitle: Text(
                                    'Proposal',
                                    style: TextStyle(
                                      color: kTextColor,
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              elevation: 3,
                              color: Colors.yellow[300],
                            ),
                          ),
                          Container(
                            height: constraints.maxHeight * 0.22,
                            width: constraints.maxWidth * 0.42,
                            child: Card(
                              child: Center(
                                child: ListTile(
                                  title: Text(
                                    '${widget.invitation}',
                                    style: TextStyle(
                                      color: kTextColor,
                                      fontFamily: 'Poppins',
                                      fontSize: 60,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  subtitle: Text(
                                    'Job Invitation',
                                    style: TextStyle(
                                      color: kTextColor,
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              elevation: 3,
                              color: Colors.blue[300],
                            ),
                          ),
                        ]),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                height: constraints.maxHeight * 0.13,
                alignment: Alignment.center,
                child: DefaultButton(
                  text: 'BROWSE AVAILABE JOBS',
                  press: () {},
                  size: 18,
                  givenWidth: constraints.maxWidth * 1,
                  givenHeight: constraints.maxHeight * 0.06,
                ),
              ),
              Container(
                height: constraints.maxHeight * 0.18,
              ),
            ],
          ),
        );
      },
    );
  }
}
