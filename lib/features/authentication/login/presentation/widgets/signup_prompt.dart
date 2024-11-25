import 'package:flutter/material.dart';
import 'package:mini_chat_app/core/themes/color_app.dart';
import 'package:mini_chat_app/core/themes/styles.dart';
import 'package:flutter/gestures.dart';

class SignUpPrompt extends StatelessWidget {
  final VoidCallback onSignUpTap;

  const SignUpPrompt({required this.onSignUpTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "Don't have an account? ",
        style: Styles.textStyle36.copyWith(fontSize: 16),
        children: <TextSpan>[
          TextSpan(
            text: 'Sign up',
            style: Styles.textStyle36
                .copyWith(fontSize: 16, color: ColorApp.primaryColor),
            recognizer: TapGestureRecognizer()..onTap = onSignUpTap,
          ),
        ],
      ),
    );
  }
}


//* INFO:
//cascade operator .. is used instead of 

//var recognizer = TapGestureRecognizer();
//recognizer.onTap = () {
// print("Tapped!");
//}; 