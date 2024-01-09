import 'package:ecommerce/components/SocalCard.dart';
import 'package:ecommerce/components/custom_suffix_icon.dart';
import 'package:ecommerce/components/default_button.dart';
import 'package:ecommerce/components/form_error.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/screens/forgot_password/forgot_password_screen.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text("Welcome Back",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ) ,
            ),
            Text("Sign in with your email and password \nor continue with social media",
              textAlign: TextAlign.center,
            ),
            SignForm(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocalCard(
                  icon : "assets/icons/google-icon.svg",
                  press: (){},

                ),  
                SocalCard(
                  icon : "assets/icons/facebook-2.svg",
                  press: (){},

                ),  
                SocalCard(
                  icon : "assets/icons/twitter.svg",
                  press: (){},

                ),  
              ],)
          ],
        ),
      ) 
    );
  }
}

class SignForm extends StatefulWidget {
  SignForm({Key? key}) : super(key: key);

  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = ["Demo Error"]; // This is now a mutable list.
  String? email;
  String? password;
  bool? remember = false;

  void addError({String? error}) {
    if (error != null && !errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String? error}) {
    if (error != null && errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: SizeConfig().getProportionateScreenHeight(20),),
          buildPasswordFormField(),
          SizedBox(height: SizeConfig().getProportionateScreenHeight(20),),
          Row(
            children: [
              Checkbox(
                value: remember, 
                onChanged: (value) {
                  setState((){
                    remember = value;
                  });
                },
              ),
              const Text("Remember me"),
              const Spacer(),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, ForgotPasswordScreen.routeName) ,
                child: Text("Forgot Password", 
                        style: TextStyle(decoration: TextDecoration.underline)),
                
              ),
            ],
          ),
          SizedBox(height: SizeConfig().getProportionateScreenHeight(20),),
          FormError(errors: errors),

          DefaultButton(
            text: "Continue", 
            press: (){
              if(_formKey.currentState!.validate()){
                _formKey.currentState!.save();
              }
            },
          ),

        ],
      )
    );
  }

  Padding buildPasswordFormField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:10.0),
      child: TextFormField(
        obscureText: true,
        onSaved: (newValue) => password = newValue,
        onChanged: (value){
          if(value.isNotEmpty){
            removeError(error: kPassNullError);
          }
          else if(value.length >= 8){
            removeError(error: kShortPassError);
          }
          return;
        },
        validator: (value){
          if(value!.isEmpty){
            addError(error: kPassNullError);
            return "";
          }
          else if(value.length < 8){
            addError(error: kShortPassError);
            return "";
          }
          return null;
        },
        decoration: InputDecoration(
          labelText: "Password",
          hintText: "Enter your Password",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Lock.svg",),
          contentPadding: EdgeInsets.symmetric(horizontal: 42,vertical: 20),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(color: kTextColor),
          ), 
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(color: kTextColor),
          ), 
          errorBorder:OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(color: kTextColor),
          ),
        ),
      ),
    );
  }

  Padding buildEmailFormField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:10.0),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        onSaved: (newValue) => email = newValue,
        onChanged:(value){
          if(value.isNotEmpty){
            removeError(error: kEmailNullError);
          }
          else if(emailValidatorRegExp.hasMatch(value)){
            removeError(error: kInvalidEmailError);
          }
          return;
        },
        validator: (value){
          if(value!.isEmpty){
            addError(error: kEmailNullError);
            return "";
          }
          else if(!emailValidatorRegExp.hasMatch(value)){
            addError(error: kInvalidEmailError);
            return "" ;
          }
          return null;

        },
        
        decoration: InputDecoration(
          labelText: "Email",
          hintText: "Enter your Email",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Mail.svg",),
          contentPadding: EdgeInsets.symmetric(horizontal: 42,vertical: 20),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(color: kTextColor),
          ), 
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(color: kTextColor),
          ), 
          errorBorder:OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(color: kTextColor),
          ), 

        ),
      ),
    );
  }


}
