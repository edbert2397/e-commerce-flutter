import 'package:ecommerce/models/Cart.dart';
import 'package:ecommerce/screens/cart/cart_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: ListView.builder(
        itemCount: demoCarts.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.all(10),
          child: Dismissible(
            direction: DismissDirection.endToStart,
            key: Key(demoCarts[index].product.id.toString()),
            onDismissed: (direction) {
              setState(() {
                demoCarts.removeAt(index);
              });
            }, 
            background: Container(
              padding: EdgeInsets.symmetric(horizontal:20),
              decoration: BoxDecoration(
                color: Color(0xFFFFE6E6),
                borderRadius: BorderRadius.circular(15),
              ),
              child: 
              Row(
                children: [
                  Spacer(),
                  // Align(
                  //   alignment: Alignment.centerRight,
                    // child: 
                      SvgPicture.asset("assets/icons/Trash.svg")
                  // ),
                ],
              ),
            ),
            child: cartCard(cart: demoCarts[index]),
          ),
        ),
      ),
    );
    // return Padding(
    //   padding: EdgeInsets.symmetric(horizontal: 20),
    //   child: Column(
    //     children: List.generate(
    //       demoCarts.length, 
    //       // (index) => Text(demoCarts[index].product.title)
    //       (index) => cartCard(cart: demoCarts[index])
    //     )
    //   ),
    // );
  }
}