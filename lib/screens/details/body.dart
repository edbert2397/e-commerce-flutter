import 'package:ecommerce/components/default_button.dart';
import 'package:ecommerce/models/Product.dart';
import 'package:ecommerce/screens/details/color_dots.dart';
import 'package:ecommerce/screens/details/product_description.dart';
import 'package:ecommerce/screens/details/product_images.dart';
import 'package:ecommerce/screens/details/top_rounded_container.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.product});

  final Product product;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product:product),
          TopRoundedContainer(
            color: Colors.white, 
            child: Column(
              children: [
                ProductDescription(
                  product: product,
                  onpress: (){}
                ),
                TopRoundedContainer(
                  color:Color(0xFFF6F7F9), 
                  child: Column(
                    children: [
                      ColorDots(product: product),
                      TopRoundedContainer(
                        color: Colors.white, 
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: SizeConfig.screenWidth! * 0.15,
                            right: SizeConfig.screenWidth! * 0.15,
                            top: 15,
                            bottom: 40,
                          ),
                          child: DefaultButton(
                            text: "Add To Cart", 
                            press: (){},
                          )
                        )
                      ),
                      // Container(
                      //   height: double.infinity,
                      //   color: Colors.white,
                      // )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      
      ),
    );
  }
}