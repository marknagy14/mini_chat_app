import 'package:flutter/material.dart';
import 'package:mini_chat_app/core/shared_widgets/custom_button.dart';
import 'package:mini_chat_app/core/themes/color_app.dart';
import 'package:mini_chat_app/core/themes/styles.dart';

class LoginButton extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final VoidCallback onSuccess;

  const LoginButton(
      {super.key,
      required this.emailController,
      required this.passwordController,
      required this.onSuccess});

  @override
  Widget build(BuildContext context) {
    return customButton(
        title: 'Log in',
        onPressed: () {
          String msg = "";
          if (!emailController.text.contains('@')) {
            msg = "enter valid email";
          } else if (passwordController.text.isEmpty) {
            msg = "enter valid password";
          } else {
            onSuccess();
          }
          final snackBar = SnackBar(content: Text(msg));
          (msg != "")
              ? ScaffoldMessenger.of(context).showSnackBar(snackBar)
              : null;
        },
        backgroundColor: ColorApp.primaryColor,
        style: Styles.textStyle36.copyWith(fontSize: 24),
        width: 490,
        height: 60,
        borderRadius: BorderRadius.circular(20));
  }


}
