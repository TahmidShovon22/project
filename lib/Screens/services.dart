import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project/Widgets/default_button.dart';

import '../constants.dart';

class Services extends StatefulWidget {
  final name = 'Donald Trump';

  final category = 'House Cleaning';

  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  final CarouselController _controller = CarouselController();

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
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                height: constraints.maxHeight * 0.09,
                child: Text(
                  'Available Service Categories',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    color: kTextColor,
                  ),
                ),
              ),
              Container(
                height: constraints.maxHeight * 0.18,
                width: constraints.maxWidth,
                child: Stack(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: constraints.maxWidth * 1,
                          child: CarouselSlider(
                            items: List.generate(
                              7,
                              (i) => LayoutBuilder(
                                builder: (BuildContext context,
                                    BoxConstraints constraints) {
                                  return Card(
                                    elevation: 2,
                                    child: Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 5),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                        border: Border.all(
                                            color: Colors.black,
                                            style: BorderStyle.solid,
                                            width: 1),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Container(
                                            height: constraints.maxHeight * 0.6,
                                            width: constraints.maxWidth * 0.8,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                fit: BoxFit.contain,
                                                image: AssetImage(
                                                    "Assets/Images/dp.jpg"),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: constraints.maxHeight * 0.3,
                                            width: constraints.maxWidth * 0.8,
                                            child: Text(
                                              '${widget.name} $i',
                                              textAlign: TextAlign.center,
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
                                  );
                                },
                              ),
                            ),
                            options: CarouselOptions(
                              enlargeCenterPage: false,
                              height: constraints.maxHeight * 0.22,
                              viewportFraction: 0.33,
                            ),
                            carouselController: _controller,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: constraints.maxWidth * 0.10,
                          child: IconButton(
                            onPressed: () => _controller.previousPage(),
                            icon: Icon(Icons.arrow_back),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                        ),
                        Container(
                          width: constraints.maxWidth * 0.10,
                          child: IconButton(
                            onPressed: () => _controller.nextPage(),
                            icon: Icon(Icons.arrow_forward),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 20, top: 10),
                height: constraints.maxHeight * 0.07,
                alignment: Alignment.centerRight,
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Show All',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: kTextColor,
                      fontFamily: 'Poppins',
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                height: constraints.maxHeight * 0.06,
                alignment: Alignment.centerLeft,
                child: Text(
                  'Recommended Services',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: kTextColor,
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: constraints.maxHeight * 0.48,
                alignment: Alignment.center,
                child: GridView.count(
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  crossAxisCount: 3,
                  children: List.generate(
                    9,
                    (i) => LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Card(
                          elevation: 0,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: constraints.maxHeight * 0.60,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.contain,
                                      image: AssetImage("Assets/Images/pc.png"),
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: constraints.maxHeight * 0.30,
                                  width: constraints.maxWidth * 0.8,
                                  child: Text(
                                    '${widget.category} $i',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: kTextColor,
                                      fontFamily: 'Poppins',
                                      fontSize: 10,
                                    ),
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
              Container(
                height: constraints.maxHeight * 0.12,
                alignment: Alignment.center,
                child: DefaultButton(
                  text: 'VIEW ALL SERVICES',
                  press: () {},
                  size: 18,
                  givenWidth: constraints.maxWidth * 0.9,
                  givenHeight: constraints.maxHeight * 0.06,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
