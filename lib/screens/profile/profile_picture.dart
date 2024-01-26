import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 115,
        width: 115,
        child: Stack(
          fit: StackFit.expand,
          clipBehavior: Clip.none,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/Profile Image.png"),
            ),
            Positioned(
              right: -16,
              bottom: 0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFF5F6F9),
                  shape:CircleBorder(),
                  side: BorderSide(color: Colors.white),
                  elevation: 0,
                ),
                onPressed: (){}, 
                child: SvgPicture.asset("assets/icons/Camera Icon.svg"),
              )
            )
      
          ],
        ),
      ),
    );
  }
}