import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: SizeConfig().getProportionateScreenWidth(20)),
          child: SectionTitle(title: title, press: press)
        ),
      ],
    );
  }
}

class SectionTitle extends StatelessWidget {
  const SectionTitle({super.key, required this.title, required this.press});

  final String title;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          )
        )
      ],
    );
  }
}