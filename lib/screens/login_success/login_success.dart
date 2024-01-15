import 'package:ecommerce/screens/home/home_screen.dart';
import 'package:ecommerce/screens/splash/components/body.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class LoginSuccess extends StatelessWidget {
  static String routeName = "/login_sucess";
  const LoginSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Login Success")
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          Image.asset("assets/images/success.png",
          height: MediaQuery.of(context).size.height * 0.4,
          width: MediaQuery.of(context).size.width ,
          fit: BoxFit.fitWidth,

          ),
          SizedBox(height: 30),
          Text(
            "Login Success",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal : 20.0),
            child: ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context,HomeScreen.routeName);
              }, 
              child: Text("Back to Home"),
            ),
          ),
          Spacer(),
          
        ],
      ),
    );
  }
}