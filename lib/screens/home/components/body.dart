import 'package:ecommerce/screens/home/components/categories.dart';
import 'package:ecommerce/screens/home/components/discount_banner.dart';
import 'package:ecommerce/screens/home/components/home_header.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            HomeHeader(),
            // SizedBox(height: 15,),
            DiscountBanner(),
            // SizedBox(height: 5, ),
            Categories(),
            

          ],
        ),
      ),
    );
  }
}