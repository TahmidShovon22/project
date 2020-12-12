import 'package:flutter/material.dart';
import 'package:project/Widgets/default_button.dart';
import 'package:project/Widgets/dropdown.dart';

import 'package:project/constants.dart';

class ServiceArea extends StatefulWidget {
  final address = 'Farmgate';
  final name = 'Donald Trump';
  final status = 'Online';
  final price = 10000.00;
  final category = 'House Cleaning';
  final qstn = 'How often do you need the Service?';

  final type = 'Contractual';
  final typeRate = 'Fixed Price';
  final xp = 'Entry Level';

  @override
  _ServiceAreaState createState() => _ServiceAreaState();
}

class _ServiceAreaState extends State<ServiceArea> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        return Container(
          height: constraints.maxHeight -
              MediaQuery.of(context).padding.top -
              MediaQuery.of(context).padding.bottom,
          width: constraints.maxWidth,
          color: Colors.white,
          child: Column(
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                height: constraints.maxHeight * 0.15,
                child: Text(
                  'Please add your required location where you want to take the service',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    color: kTextColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                height: constraints.maxHeight * 0.095,
                padding: EdgeInsets.only(right: 35, left: 35, top: 20),
                alignment: Alignment.center,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 0.80),
                  ),
                  child: DropDownWidget(
                    'City',
                    Icons.arrow_drop_down,
                  ),
                ),
              ),
              Container(
                height: constraints.maxHeight * 0.095,
                padding: EdgeInsets.only(right: 35, left: 35, top: 20),
                alignment: Alignment.center,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 0.80),
                  ),
                  child: DropDownWidget(
                    'Area',
                    Icons.arrow_drop_down,
                  ),
                ),
              ),
              Container(
                height: constraints.maxHeight * 0.26,
                padding: EdgeInsets.only(right: 35, left: 35, top: 20),
                child: TextField(
                  minLines: 5,
                  maxLines: 5,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                  ),
                  cursorHeight: 30,
                  autocorrect: false,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 35,
                ),
                height: constraints.maxHeight * 0.12,
                alignment: Alignment.center,
                child: DefaultButton(
                  text: 'SAVE ADDRESS',
                  press: () {},
                  size: 18,
                  givenWidth: constraints.maxWidth * 1,
                  givenHeight: constraints.maxHeight * 0.06,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 35,
                ),
                height: constraints.maxHeight * 0.28,
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        'Saved address',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: kTextColor,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 20),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      height: constraints.maxHeight * 0.08,
                      width: constraints.maxWidth,
                      decoration: BoxDecoration(
                        color: kPrimaryLightColor,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: FittedBox(
                        child: Text(
                          '${widget.address}',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            color: kTextColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
