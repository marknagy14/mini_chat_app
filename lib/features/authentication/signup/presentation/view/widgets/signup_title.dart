import 'package:flutter/material.dart';
import 'package:mini_chat_app/core/themes/styles.dart';

class SignUpTitle extends StatelessWidget {
  const SignUpTitle({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Text("Register to new account",style:Styles.textStyle24,textAlign: TextAlign.center,
    );
  }
}