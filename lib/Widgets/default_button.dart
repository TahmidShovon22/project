import 'package:flutter/material.dart';
import '../constants.dart';

class DefaultButton extends StatelessWidget {
  final double size;

  const DefaultButton({
    Key key,
    this.text,
    this.press,
    this.size,
  }) : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
