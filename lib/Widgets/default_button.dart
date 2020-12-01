import 'package:flutter/material.dart';
import '../constants.dart';

import '../size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //width: SizeConfig.screenWidth,
      //height: SizeConfig.screenHeight / 15,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        color: kPrimaryColor,
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Poppins', //getProportionateScreenWidth(18),
            color: Colors.white,
          ),
        ),
        clipBehavior: Clip.hardEdge,
        elevation: 5,
        disabledColor: Colors.blueGrey,
        disabledElevation: 10,
      ),
    );
  }
}
