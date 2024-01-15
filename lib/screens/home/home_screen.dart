import 'package:ecommerce/screens/home/components/body.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Body(),
    );
  }
}