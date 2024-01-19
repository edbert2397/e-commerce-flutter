import 'package:ecommerce/components/product_card.dart';
import 'package:ecommerce/models/Product.dart';
import 'package:ecommerce/screens/home/components/section_title.dart';
import 'package:flutter/material.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:20.0),
      child: Column(
        children: [
          SectionTitle(title: "Popular Products", press: (){}),
          SingleChildScrollView(
            child: Row(
              children: List.generate(demoProducts.length, 
                          (index) {
                            if(demoProducts[index].isPopular){
                              return ProductCard(product: demoProducts[index]);
                            }

                            return SizedBox.shrink();
                          }
                        ),
            ),
          )
        ],
      ),
    );
  }
}