import "package:ecommerce/screens/cart/cart_screen.dart";
import "package:ecommerce/screens/complete_profile/complete_profile_screen.dart";
import "package:ecommerce/screens/details/detail_screen.dart";
import "package:ecommerce/screens/forgot_password/forgot_password_screen.dart";
import "package:ecommerce/screens/home/home_screen.dart";
import "package:ecommerce/screens/login_success/login_success.dart";
import "package:ecommerce/screens/otp/otp_screen.dart";
import "package:ecommerce/screens/profile/profile_screen.dart";
import "package:ecommerce/screens/sign_in/sign_in_screen.dart";
import "package:ecommerce/screens/sign_up/SignUpScreen.dart";
import "package:ecommerce/screens/splash/splash_screen.dart";
import "package:flutter/material.dart";

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccess.routeName: (context) => LoginSuccess(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailScreen.routeName: (context) => DetailScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};    