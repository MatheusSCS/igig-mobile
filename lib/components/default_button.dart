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
    SizeConfig().init(context);
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(60),
      child: FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)
        ),
        color: CONST_COR_PRIMARIA,
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            // fontSize: getProportionateScreenWidth(14),
            color: Colors.white,
          ),
        ),
      ),
    );


  }
}
