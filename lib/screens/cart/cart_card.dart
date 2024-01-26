import 'package:ecommerce/constants.dart';
import 'package:ecommerce/models/Cart.dart';
import 'package:flutter/material.dart';

class cartCard extends StatelessWidget {
  const cartCard({super.key, required this.cart});

  final Cart cart;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 88,
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xFFF5F6F9),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Image.asset(cart.product.images[0]),
          ),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cart.product.title,
              style: TextStyle(color: Colors.black,fontSize: 16),
            ),
            SizedBox(height: 10,),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "\$${cart.product.price}",
                    style: TextStyle(fontWeight: FontWeight.bold ,color: kPrimaryColor)
                  ),
                  TextSpan(
                    text: "  x${cart.numOfItem}",

                  )
                ]
              ),
            ),
          ],
        )
      ],
    );
  }
}