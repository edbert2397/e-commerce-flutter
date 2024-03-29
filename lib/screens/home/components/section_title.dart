import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({super.key, required this.title, required this.press});

  final String title;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
          style: TextStyle(
            fontSize: 16,
            // fontWeight: FontWeight.bold,
            color: Colors.black,
          )
        ),
        GestureDetector(
          onTap: press,
          child: Text("See More",
            style: TextStyle(
              color: Color(0xFFBBBBBB),
            ),
          )
        ),

      ],
    );
  }
}