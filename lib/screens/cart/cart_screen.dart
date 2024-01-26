import 'package:ecommerce/models/Cart.dart';
import 'package:ecommerce/screens/cart/body.dart';
import 'package:ecommerce/screens/cart/check_out_card.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: appbar(context),
      body: Column(
        children: [
          Body(),
          // CheckoutCard(), // This stays at the bottom
        ],
      ),
      bottomNavigationBar: CheckoutCard(),
    );
  }

  AppBar appbar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Your Cart",
            style: TextStyle(color: Colors.black),
          ),
          Text("${demoCarts.length} items",
            style: Theme.of(context).textTheme.bodySmall
          )
        ],
      ),
    );
  }
}