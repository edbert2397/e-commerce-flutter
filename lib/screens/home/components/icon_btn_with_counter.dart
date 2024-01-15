import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    super.key, 
    required this.svgSrc, 
    this.numItem = 0, 
    required this.press});

  final String svgSrc;
  final int numItem;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.all(12),
            height: 46,
            width: 46,
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(svgSrc),
          ),
          if(numItem != 0)
            Positioned(
              top: -3,
              right: 0,
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Color(0xFFFF4848),
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5,color: Colors.white),
                ),
                child: Center(
                  child: Text(
                          "${numItem}",
                          style: TextStyle(
                            fontSize: 12,
                            height: 1,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                  
                ),
              ),
            )
        ],
      ),
    );
  }
}