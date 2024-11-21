import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_chat_app/core/shared_widgets/custom_button.dart';
import 'package:mini_chat_app/core/themes/color_app.dart';
import 'package:mini_chat_app/core/themes/styles.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return customButton(
        title: 'Log in',
        onPressed: () {
          //todo:  navigate to next screen
          print("navigate to home screen");
        },
        backgroundColor: ColorApp.primaryColor,
        style: Styles.textStyle36.copyWith(fontSize: 24),
        width: 490,
        height: 60,
        borderRadius: BorderRadius.circular(20));
  }
}
