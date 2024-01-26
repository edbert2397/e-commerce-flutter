import 'package:ecommerce/components/custom_button_navbar.dart';
import 'package:ecommerce/enums.dart';
import 'package:ecommerce/screens/profile/body.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Body(),
      bottomNavigationBar: CustomButtonNavbar(SelectedMenu: MenuState.profile),
    );
  }
}