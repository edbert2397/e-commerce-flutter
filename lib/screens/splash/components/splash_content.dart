import "package:ecommerce/constants.dart";
import "package:ecommerce/size_config.dart";
import "package:flutter/material.dart";

class SplashContent extends StatelessWidget {
  const SplashContent({
    super.key, required this.text, required this.image,
  });
  final String text,image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(flex: 2),
        Text(
          "TOKOTO",
          style: TextStyle(
            fontSize: SizeConfig().getProportionateScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          )
        ),
        Text(
          text,
          textAlign:TextAlign.center, 
        ),
        Spacer(flex: 2),
        Image.asset(
         image,
          height: SizeConfig().getProportionateScreenHeight(265),
          width: SizeConfig().getProportionateScreenWidth(235),
        )
      ]
    );
  }
}