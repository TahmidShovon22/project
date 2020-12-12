import 'package:flutter/material.dart';
import '../constants.dart';

class DefaultButton extends StatelessWidget {
  final double size;
  final double givenWidth;
  final double givenHeight;
  const DefaultButton({
    Key key,
    this.text,
    this.press,
    this.size,
    this.givenWidth,
    this.givenHeight,
  }) : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: givenWidth == 0.0 ? null : givenWidth,
      height: givenHeight == 0.0 ? null : givenHeight,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        color: kPrimaryColor,
        onPressed: press,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: size == 0.0 ? 20 : size,
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
