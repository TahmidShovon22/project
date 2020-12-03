import 'package:flutter/material.dart';
import 'package:project/constants.dart';
import 'package:project/size_config.dart';
import 'package:spinner_input/spinner_input.dart';

class MySpinner extends StatefulWidget {
  @override
  _MySpinnerState createState() => _MySpinnerState();
}

class _MySpinnerState extends State<MySpinner> {
  double spinner = 0;
  double spinner3 = -5;
  double spinner4 = 20;
  double spinner5 = 82.654;
  double spinner6 = 5;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: //Column(
          //hildren: <Widget>[
          // default spinner
          /* Container(
            margin: EdgeInsets.all(20),
            child: SpinnerInput(
              spinnerValue: spinner,
//                  minValue: 0,
//                  maxValue: 200,
              onChange: (newValue) {
                setState(() {
                  spinner = newValue;
                });
              },
            ),
          ),*/

          // Set step ( can be int or double )
          Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(
              color: kPrimaryLightColor, style: BorderStyle.solid, width: 2),
        ),
        //margin: EdgeInsets.all(20),
        child: SpinnerInput(
          direction: TextDirection.rtl,
          minValue: 0,
          maxValue: 200,
          step: 1,
          minusButton: SpinnerButtonStyle(
            elevation: 0,
            color: kPrimaryColor,
            height: getProportionateScreenHeight(40),
            width: getProportionateScreenWidth(40),
            borderRadius: BorderRadius.circular(5),
          ),
          plusButton: SpinnerButtonStyle(
              elevation: 0,
              color: kPrimaryColor,
              height: getProportionateScreenHeight(40),
              width: getProportionateScreenWidth(40),
              borderRadius: BorderRadius.circular(5)),
          middleNumberWidth: 70,
          middleNumberStyle: TextStyle(
            fontSize: 21,
          ),
          middleNumberBackground: Colors.white,
          spinnerValue: spinner3,
          onChange: (newValue) {
            setState(() {
              spinner3 = newValue;
            });
          },
        ),
      ),

      // Disable long press and input-popup
      /*Container(
            margin: EdgeInsets.all(20),
            child: SpinnerInput(
              minValue: 0,
              maxValue: 200,
              disabledLongPress: true,
              disabledPopup: true,
              step: 5,
              spinnerValue: spinner4,
              onChange: (newValue) {
                setState(() {
                  spinner4 = newValue;
                });
              },
            ),
          ),

          // A little more customized buttons
          Container(
            margin: EdgeInsets.all(20),
            child: SpinnerInput(
              minValue: 0,
              maxValue: 200,
              step: 5.524,
              fractionDigits: 3,
              plusButton: SpinnerButtonStyle(
                  color: Colors.green,
                  height: 60,
                  width: 60,
                  elevation: 1,
                  highlightElevation: 10,
                  child: Icon(Icons.thumb_up)),
              minusButton: SpinnerButtonStyle(
                color: Colors.red,
                borderRadius: BorderRadius.circular(0),
              ),
              spinnerValue: spinner5,
              onChange: (newValue) {
                setState(() {
                  spinner5 = newValue;
                });
              },
            ),
          ),

          // RTL support
          Container(
            margin: EdgeInsets.all(50),
            child: SpinnerInput(
              direction: TextDirection.rtl,
              spinnerValue: spinner6,
              onChange: (newValue) {
                setState(() {
                  spinner6 = newValue;
                });
              },
            ),
          )*/
      //  ],
      //   ),
      // )
    );
  }
}
