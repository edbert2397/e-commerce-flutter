import 'package:ecommerce/components/rounded_icon_btn.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/models/Product.dart';
import 'package:flutter/material.dart';

class ColorDots extends StatefulWidget {
  const ColorDots({super.key, required this.product});

  final Product product;
  @override
  State<ColorDots> createState() => _ColorDotsState();
}

class _ColorDotsState extends State<ColorDots> {
  int selectedColor = 0;
  @override
   Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ...List.generate(
            widget.product.colors.length, 
            (index) => ColorDot(
                        index: index,
                        color: widget.product.colors[index],
                        isSelected: index == selectedColor,
                        onSelected: (){
                          setState(() {
                            selectedColor = index;
                          });
                        }
                      )
          ),
          Spacer(),
          RoundedIconButton(
            icon: Icon(Icons.remove), 
            press: (){}, 
            showShadow: true,
          ),
          SizedBox(width:5),
          RoundedIconButton(
            icon: Icon(Icons.add), 
            press: (){}, 
            showShadow: true,
          )
          
        ],
      )
    ); 
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({super.key, required this.index, required this.color, required this.isSelected, required this.onSelected});

  final int index;
  final Color color;
  final bool isSelected;
  final VoidCallback onSelected;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelected,
      child: Container(
        height: 40,
        width: 40,
        margin: EdgeInsets.only(right: 2),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isSelected? kPrimaryColor: Colors.transparent, 
          )
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          )
        )
      ),
    );
  }
}