import 'package:ecommerce/components/custom_suffix_icon.dart';
import 'package:ecommerce/components/form_error.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/screens/otp/otp_screen.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({super.key});

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? address;

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error!);
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error!);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight!*0.04),
          BuildFirstName(),
          SizedBox(height: SizeConfig.screenHeight!*0.05),
          BuildLastName(),
          SizedBox(height: SizeConfig.screenHeight!*0.05),
          BuildPhoneNumber(),
          SizedBox(height: SizeConfig.screenHeight!*0.05),
          BuildAddress(),
          SizedBox(height: SizeConfig.screenHeight!*0.02),
          FormError(errors: errors),
          SizedBox(height: SizeConfig.screenHeight!*0.02),
          ElevatedButton(
            onPressed: (){
              if(_formKey.currentState!.validate()){
                _formKey.currentState!.save();
                Navigator.pushNamed(context, OtpScreen.routeName);

              }
            }, 
            child: Text("Continue")
          )


        ],
      ),
    );
  }

  TextFormField BuildAddress() {
    return TextFormField(
          onSaved: (newValue) => address = newValue,
          onChanged: (value) {
            if(value.isNotEmpty){
              removeError(error: kAddressNullError);
            }
            return;
          },
          validator: (value){
            if(value!.isEmpty){
              addError(error: kAddressNullError);
              return "";
            }
            return null;
          },
          decoration: InputDecoration(
            labelText: "Address",
            hintText: "Enter your address",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Location point.svg"),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide(color: kTextColor),
            ), 
          ),
          
        );
  }
  TextFormField BuildPhoneNumber() {
    return TextFormField(
          keyboardType: TextInputType.phone,
          onSaved: (newValue) => phoneNumber = newValue,
          onChanged: (value) {
            if(value.isNotEmpty){
              removeError(error: kPhoneNumberNullError);
            }
            return;
          },
          validator: (value){
            if(value!.isEmpty){
              addError(error: kPhoneNumberNullError);
              return "";
            }
            return null;
          },
          decoration: InputDecoration(
            labelText: "Phone Number",
            hintText: "Enter your phone number",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Phone.svg"),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide(color: kTextColor),
            ), 
          ),
          
        );
  }
  TextFormField BuildFirstName() {
    return TextFormField(
          // keyboardType: TextInputType.emailAddress,
          onSaved: (newValue) => firstName = newValue,
          onChanged: (value) {
            if(value.isNotEmpty){
              removeError(error: kNamelNullError);
            }
            return;
          },
          validator: (value){
            if(value!.isEmpty){
              addError(error: kNamelNullError);
              return "";
            }
            return null;
          },
          decoration: InputDecoration(
            labelText: "First Name",
            hintText: "Enter your first name",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/User.svg"),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide(color: kTextColor),
            ), 
          ),
          
        );
  }
  TextFormField BuildLastName() {
    return TextFormField(
          // keyboardType: TextInputType.emailAddress,
          onSaved: (newValue) => lastName = newValue,
          onChanged: (value) {
            if(value.isNotEmpty){
              removeError(error: kNamelNullError);
            }
            return;
          },
          validator: (value){
            if(value!.isEmpty){
              addError(error: kNamelNullError);
              return "";
            }
            return null;
          },
          decoration: InputDecoration(
            labelText: "Last Name",
            hintText: "Enter your Last name",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/User.svg"),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide(color: kTextColor),
            ), 
          ),
          
        );
  }
} 