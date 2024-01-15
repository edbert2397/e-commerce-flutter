import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(SizeConfig().getProportionateScreenWidth(20.0)),
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig().getProportionateScreenWidth(20.0),
        vertical: SizeConfig().getProportionateScreenWidth(15.0),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFF4A3298),
      ),
      child: Text.rich(
        TextSpan(
          style: TextStyle(color: Colors.white),
          children: [
            TextSpan(text: "A Little Surprise\n"),
            TextSpan(
              text: "Cashback 20%",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),

    );
  }
}