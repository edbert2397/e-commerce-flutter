import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  final double rating;

  const CustomAppBar({Key? key, required this.rating}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    // print(preferredSize);
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: [
            SizedBox(
              height: 40,
              width: 40,
              child: TextButton(
                onPressed:()=> Navigator.pop(context), 
                child: SvgPicture.asset(
                  "assets/icons/Back ICon.svg",
                  height: 15,
                ),
              ),

            ),
            Spacer(),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 14,vertical: 5),
                decoration: BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Text('${rating}',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 5,),
                    SvgPicture.asset("assets/icons/Star Icon.svg"),

                  ],
                ),  
            ),

          ],
        ),
      )
    );
  }
}