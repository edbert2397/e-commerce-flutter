import 'package:ecommerce/models/Product.dart';
import 'package:ecommerce/screens/details/body.dart';
import 'package:ecommerce/screens/details/custom_appbar.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  static String routeName = "/details";
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final ProductDetailArguments args = ModalRoute.of(context)!.settings.arguments as ProductDetailArguments;

    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(rating: args.product.rating),
      body: Body(product: args.product),
    );
  }
}

class ProductDetailArguments {
  final Product product;
  ProductDetailArguments({required this.product});
}