import 'package:flutter/material.dart';
import 'package:project/Widgets/default_button.dart';
import 'package:project/Widgets/rating_bar_indicator.dart';
import '../size_config.dart';
import '../constants.dart';
import 'package:intl/intl.dart';

class ClientInfo extends StatefulWidget {
  final address = 'Farmgate, Dhaka, Bangladesh, Asia, Earth';
  final name = 'Donald Trump';
  final status = 'Online';
  final rated = 3.5;
  final reviews = 15;
  final hired = 40;
  //final postingTime;

  //PopUp(this.address, this.name, this.status, this.category, this.qstn);
  @override
  _ClientInfoState createState() => _ClientInfoState();
}

class _ClientInfoState extends State<ClientInfo> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Theme.of(context).primaryColorLight,
            height: getProportionateScreenHeight(144.35),
            width: double.infinity,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 25, right: 5),
                  width: getProportionateScreenWidth(80),
                  height: getProportionateScreenHeight(80),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: kTextColor,
                      width: 3,
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("Assets/Images/dp.jpg"),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  height: getProportionateScreenHeight(100),
                  width: getProportionateScreenWidth(250),
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
                      Row(
                        children: [
                          Icon(
                            Icons.circle,
                            size: 15,
                            color: widget.status == 'Online'
                                ? Colors.green
                                : Colors.grey,
                          ),
                          Text(
                            widget.status,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: kTextColor,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ],
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
          Divider(
            color: kTextColor,
            thickness: 3,
            height: 0,
            indent: getProportionateScreenWidth(30),
            endIndent: getProportionateScreenWidth(30),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 0),
            width: double.infinity,
            height: getProportionateScreenHeight(580),
            child: Column(
              children: [
                Text(
                  'Location :\n${widget.address}',
                  style: TextStyle(
                    color: kTextColor,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                    'jobs posted at : ${DateFormat('hh.mm a').format(DateTime.now())}\nMember since ${DateFormat('MMM d, y').format(DateTime.now())}',
                    style: TextStyle(
                      color: kTextColor,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                    'Total hired :\ ${widget.hired}',
                    style: TextStyle(
                      color: kTextColor,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(210),
                ),
                Container(
                  padding:
                      EdgeInsets.only(bottom: 10, left: 50, right: 50, top: 10),
                  height: getProportionateScreenHeight(70),
                  width: double.infinity,
                  child: DefaultButton(
                    text: 'CREATE PROPOSAL',
                    press: () {},
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
