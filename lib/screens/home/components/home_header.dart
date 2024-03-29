import 'package:ecommerce/screens/cart/cart_screen.dart';
import 'package:ecommerce/screens/home/components/icon_btn_with_counter.dart';
import 'package:ecommerce/screens/home/components/search_field.dart';
import 'package:ecommerce/screens/profile/profile_screen.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig().getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SearchField(),
          IconBtnWithCounter(svgSrc: "assets/icons/Cart Icon.svg",press: ()=> Navigator.pushNamed(context, CartScreen.routeName)),
          IconBtnWithCounter(svgSrc: "assets/icons/Bell.svg",numItem: 3, press: ()=> Navigator.pushNamed(context, ProfileScreen.routeName))
        ],
      ) 
    );
  }
}