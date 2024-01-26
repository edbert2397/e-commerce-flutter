import 'package:ecommerce/components/default_button.dart';
import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CheckoutCard extends StatelessWidget {
  // const CheckoutCard({
  //   Key key,
  // }) : super(key: key);

  const CheckoutCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFDADADA).withOpacity(0.15),
            offset: Offset(0, -10),
            blurRadius: 20,
          )
        ]
      ),
      
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                height: 30,
                width : 30,
                decoration: BoxDecoration(
                  color: Color(0xFFF5F6F9),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset("assets/icons/receipt.svg"),
              ),
              Spacer(),
              Text("Add voucher code"),
              SizedBox(width: 10),
              Icon(
                Icons.arrow_forward_ios,
                size: 12,
                color: kPrimaryColor,
              )
            ],
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Total:\n"
                    ),
                    TextSpan(
                      text: "\$337",
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16)
                    )
                  ]
                )
              ),
              SizedBox(
                width: 150,
                child: DefaultButton(text: "Check Out", press: (){})
              )

            ],
          )
        ],
      ),

    );
  }
}