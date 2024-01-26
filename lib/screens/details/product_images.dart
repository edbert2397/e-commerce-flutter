import 'package:ecommerce/constants.dart';
import 'package:ecommerce/models/Product.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({super.key, required this.product});

  final Product product;
  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  @override
  int selectedImage = 0;
  Widget build(BuildContext context) {
    return Column(
      children: [
        // AspectRatio(
        //   aspectRatio: 1,
        //    child: 
          SizedBox(
            width: 200,
            child: Hero(
              tag: widget.product.id.toString(), 
              child: Image.asset(widget.product.images[selectedImage]),
            ),
          ),
        // ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            widget.product.images.length, 
            (index) => buildSmallProductPreview(index))
        ),

      ],
    );
  }
  
  GestureDetector buildSmallProductPreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: AnimatedContainer(
        duration: defaultDuration,
        margin: EdgeInsetsDirectional.symmetric(horizontal: 14),
        padding: EdgeInsets.all(8),
        height: 48,
        width: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(
            color: kPrimaryColor.withOpacity(index == selectedImage? 1:0 ),
          ),
        ),
        child: Image.asset(widget.product.images[index]),
      ),

    );
  }
}