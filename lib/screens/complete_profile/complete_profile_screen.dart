import 'package:ecommerce/constants.dart';
import 'package:ecommerce/screens/complete_profile/components/complete_profile_form.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class CompleteProfileScreen  extends StatelessWidget {
  static String routeName = "/complete_profile";
  const CompleteProfileScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text("Complete Profile", style: headingStyle),
                  Text("Complete your details or continue  \nwith social media",
                   textAlign: TextAlign.center,),

                  //  SizedBox(height: SizeConfig.screenHeight! * 0.03,),
                   CompleteProfileForm(),
                  //  SizedBox(height: SizeConfig.screenHeight! * 0.03,),
                   Text( "By continuing your confirm that you agree \nwith our Term and Condition",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: kTextColor),
                   ),
                ],
              ),
            ),
          ),
        ) 
      ),
    );
  }
}