import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({super.key, required this.icon, required this.text, required this.press});

  final String icon,text;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical : 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(25),
          backgroundColor: Color(0xFFF5F6F9),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        ),
        onPressed: press,
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              colorFilter: ColorFilter.mode(kPrimaryColor, BlendMode.srcIn),
              width: 22,
            ),
            SizedBox(width: 20),
            Expanded(child: Text(text)),
            // Spacer(),
            Icon(
              Icons.arrow_forward_ios
            )
          ],
        ),
      )
    );
  }
}