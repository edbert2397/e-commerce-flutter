import 'package:ecommerce/components/SocalCard.dart';
import 'package:ecommerce/screens/sign_up/components/SignUpForm.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
           child: Column(
            children: [
              Text("Register Account", 
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("Complete your details or continue \nwith social media",
                textAlign: TextAlign.center,
              ),
              SignUpForm(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocalCard(
                    icon: "assets/icons/google-icon.svg",
                    press: () {},
                  ),
                  SocalCard(
                    icon: "assets/icons/facebook-2.svg",
                    press: () {},
                  ),
                  SocalCard(
                    icon: "assets/icons/twitter.svg",
                    press: () {},
                  ),
                ],
              ),
              Text("By continuing your confirm that you agree \nwith our Term and Condition",
                textAlign: TextAlign.center,)
              
            ],
           ),
        ),
      ),
    );
  }
  
}