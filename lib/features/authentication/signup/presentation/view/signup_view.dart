import 'package:flutter/material.dart';
import 'package:mini_chat_app/features/authentication/signup/presentation/view/widgets/signup_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
   Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          // to dismiss keyboard when tapping anywhere else on screen
          FocusScope.of(context).unfocus();
        },
        child: const Scaffold(
          body: SignUpBody(),
        ),
      ),
    );
  }
}
