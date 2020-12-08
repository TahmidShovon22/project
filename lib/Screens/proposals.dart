import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_carousel/carousel.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:intl/intl.dart';
import 'package:project/Widgets/default_button.dart';
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
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Booking"),
        ),
        body: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 20),
                height: getProportionateScreenHeight(220),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: getProportionateScreenHeight(220),
                      width: MediaQuery.of(context).size.width * 0.10,
                      child: Flexible(
                        child: IconButton(
                          onPressed: () => _controller.previousPage(),
                          icon: Icon(Icons.arrow_back),
                        ),
                      ),
                    ),
                    Container(
                      height: getProportionateScreenHeight(220),
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: CarouselSlider(
                        items: List.generate(
                          7,
                          (i) => Card(
                            elevation: 5,
                            child: Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: kPrimaryLightColor,
                                borderRadius: BorderRadius.circular(5.0),
                                border: Border.all(
                                    color: kTextColor,
                                    style: BorderStyle.solid,
                                    width: 1),
                              ),
                              child: FittedBox(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: getProportionateScreenWidth(90),
                                      height: getProportionateScreenHeight(90),
                                      margin: EdgeInsets.only(bottom: 20),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              "Assets/Images/dp.jpg"),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '${widget.name} $i',
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
                                      child: FittedBox(
                                        fit: BoxFit.contain,
                                        child: RatingBarIndicator(
                                          itemSize: 20,
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
                        options: CarouselOptions(
                          enlargeCenterPage: false,
                          height: 220,
                          disableCenter: false,
                          pageSnapping: false,
                          viewportFraction: 0.5,
                        ),
                        carouselController: _controller,
                      ),
                    ),
                    Container(
                      height: getProportionateScreenHeight(240),
                      width: getProportionateScreenWidth(20),
                      child: Flexible(
                        child: IconButton(
                          onPressed: () => _controller.nextPage(),
                          icon: Icon(Icons.arrow_forward),
                        ),
                      ),
                    ),
                  ],
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
        ),
      ),
    );
  }
}
