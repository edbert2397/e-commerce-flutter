import 'package:ecommerce/components/custom_suffix_icon.dart';
import 'package:ecommerce/components/default_button.dart';
import 'package:ecommerce/components/form_error.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/screens/complete_profile/complete_profile_screen.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});
  
  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  String? confirm_password;
  bool remember = false;
  final List<String> errors = [];

  void addError({required String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({required String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          // Text("te"),
          buildEmailFormField(),
          SizedBox(height: SizeConfig.screenHeight! * 0.04,),
          buildPasswordFormField(),
          SizedBox(height: SizeConfig.screenHeight! * 0.04,),
          buildConfirmPasswordFormField(),
          SizedBox(height: SizeConfig.screenHeight! * 0.04,),
          FormError(errors: errors),
          DefaultButton(
            text: "Continue", 
            press:(){
              if(_formKey.currentState!.validate()){
                // print(errors.length);
                _formKey.currentState!.save();
                print("faef");
                Navigator.pushNamed(context, CompleteProfileScreen.routeName);
              }
              print("faefdfada");
            }
          ),
        ],
      ),
    );
  }
  Padding buildConfirmPasswordFormField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:10.0),
      child: TextFormField(
        obscureText: true,
        onSaved: (newValue) => confirm_password = newValue,
        onChanged: (value){
          if(value.isNotEmpty){
            removeError(error: kPassNullError);
          }
          else if(value == password){
            removeError(error: kMatchPassError);
          }
          return;
        },
        validator: (value){
          if(value!.isEmpty){
            addError(error: kPassNullError);
            return "";
          }
          else if(value != password){
            addError(error: kMatchPassError);
            return "";
          }
          return null;
        },
        decoration: InputDecoration(
          labelText: "Confirm Password",
          hintText: "Enter your Password",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Lock.svg",),
          contentPadding: EdgeInsets.symmetric(horizontal: 42,vertical: 20),
          // enabledBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(28),
          //   borderSide: BorderSide(color: kTextColor),
          // ), 
          // focusedBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(28),
          //   borderSide: BorderSide(color: kTextColor),
          // ), 
          // errorBorder:OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(28),
          //   borderSide: BorderSide(color: kTextColor),
          // ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(color: kTextColor),
          ), 
        ),
      ),
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
          password = value;
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
          border: OutlineInputBorder(
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
            print("aaaaa");
            addError(error: kInvalidEmailError);
            return "" ;
          }
          print("bbbbbbb");
          return null;

        },
        
        decoration: InputDecoration(
          labelText: "Email",
          hintText: "Enter your Email",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Mail.svg",),
          contentPadding: EdgeInsets.symmetric(horizontal: 42,vertical: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(color: kTextColor),
          ), 

        ),
      ),
    );
  }
}