import 'package:ecommerce/constants.dart';
import 'package:ecommerce/enums.dart';
import 'package:ecommerce/screens/home/home_screen.dart';
import 'package:ecommerce/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomButtonNavbar extends StatelessWidget {
  const CustomButtonNavbar({super.key, required this.SelectedMenu});

  final MenuState SelectedMenu;
  @override
  Widget build(BuildContext context) {
    final Color inactive = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset:Offset(0, -15),
            blurRadius: 15,
            color: Color(0xFFDADADA).withOpacity(0.15),
          )
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40)
        ),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, HomeScreen.routeName), 
            icon: SvgPicture.asset(
              "assets/icons/Shop Icon.svg",
              colorFilter: ColorFilter.mode(
                MenuState.home == SelectedMenu ? kPrimaryColor : inactive, 
                BlendMode.srcIn
              ),
            )
          ),
          IconButton(
            onPressed: (){}, 
            icon: SvgPicture.asset("assets/icons/Heart Icon.svg")
          ),
          IconButton(
            onPressed: (){}, 
            icon: SvgPicture.asset("assets/icons/Chat bubble Icon.svg")
          ),
          IconButton(
            onPressed: () => Navigator.pushNamed(context, ProfileScreen.routeName), 
            icon: SvgPicture.asset(
              "assets/icons/User Icon.svg",
              colorFilter: ColorFilter.mode(
                MenuState.profile == SelectedMenu ? kPrimaryColor : inactive, 
                BlendMode.srcIn
              ),
            ),
            
          )
        ],
      )
    );
  }
}