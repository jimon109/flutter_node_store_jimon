import 'package:flutter/material.dart';
import 'package:flutter_node_store67/components/mobile_layout.dart';
import 'package:flutter_node_store67/components/responsive_layout.dart';
import 'package:flutter_node_store67/components/wed_layout.dart';
import 'package:flutter_node_store67/screens/register/register_form.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

   @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        webChild: WebLayout(
          imageWidget: Image.asset(
            "assets/images/signup.png",
            width: 200,
          ),

          dataWidget:
              RegisterForm(), //Lets define widget for Sign up form & use here
        ),
        mobileChild: MobileLayout(
          imageWidget: Image.asset(
            "assets/images/signup.png",
            width: 75,
          ),
          dataWidget: RegisterForm(),
        ));
  }
}