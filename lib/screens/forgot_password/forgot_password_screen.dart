import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = "/forgot_password";
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Forgot Password"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),

          child: SingleChildScrollView(
            child: Column(
              children: [
                Text("Forgot Password",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
                Text("Please enter your email and we will sent\n you a link to return your account",
                textAlign: TextAlign.center,
                ),
                SizedBox(height: 32),
                
              ],
            ),
          ),
        )
      ),

    );
  }
}