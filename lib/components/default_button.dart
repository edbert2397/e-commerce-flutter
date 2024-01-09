import 'package:ecommerce/constants.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';


class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key, required this.text, required this.press,
  });
  final String text;
  final VoidCallback press; 
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: SizeConfig().getProportionateScreenHeight(56),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: kPrimaryColor,
        ),
        onPressed:press ,
      
        child: Text(
          text,
          style: TextStyle(
            fontSize: SizeConfig().getProportionateScreenWidth(18),
            color: Colors.white,
          ),
        )
      ),
    );
  }
}
