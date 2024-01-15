import 'package:ecommerce/constants.dart';
import 'package:ecommerce/screens/otp/components/otp_form.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp";
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text("OTP Verification",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black,
                )),
                Text("We sent your code to +1 898 860 ***"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("This code will expired in "),
                    TweenAnimationBuilder(
                      tween: Tween(begin: 30.0,end : 0.0), 
                      duration: Duration(seconds: 30), 
                      builder: 
                      (context, value, child) => Text(
                        "00:${value.toInt()}",
                        style: TextStyle(color: kPrimaryColor),
                      )
                    ),
                    OtpForm(),
                    GestureDetector(
                      onTap: (){},
                      child: Text("Resend OTP Code")
                    )
                    
                  ],

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}