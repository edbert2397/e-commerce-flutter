import 'package:ecommerce/constants.dart';
import 'package:ecommerce/models/Product.dart';
import 'package:ecommerce/screens/details/top_rounded_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({super.key, required this.product, required this.onpress});

  final Product product;
  final GestureTapCallback onpress;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            product.title,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child:Container(
            padding: EdgeInsets.all(15),
            width: 64,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
              color: product.isFavourite ? Color(0xFFFFE6E6) : Color(0xFFF5F6F9),
            ),
            child: SvgPicture.asset(
              "assets/icons/Heart Icon_2.svg",
              colorFilter: ColorFilter.mode(product.isFavourite ? Color(0xFFFF4848) : Color(0xFFDBDEE4), BlendMode.srcIn),
              height: 16,
            ),

          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 64,
          ),
          child: Text(
            product.description,
            maxLines: 3,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
          child: GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                Text(
                  "See More Detail",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kPrimaryColor,
                    ),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: kPrimaryColor,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}