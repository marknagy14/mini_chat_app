import 'package:flutter/material.dart';
import 'package:mini_chat_app/features/authentication/login/presentation/widgets/email_field.dart';
import 'package:mini_chat_app/features/authentication/login/presentation/widgets/login_button.dart';
import 'package:mini_chat_app/features/authentication/login/presentation/widgets/login_title.dart';
import 'package:mini_chat_app/features/authentication/login/presentation/widgets/logo_widget.dart';
import 'package:mini_chat_app/features/authentication/login/presentation/widgets/password_field.dart';
import 'package:mini_chat_app/features/authentication/login/presentation/widgets/signup_prompt.dart';
import 'package:mini_chat_app/features/authentication/signup/presentation/view/signup_view.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({
    super.key,
  });

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool isVisible = false;

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LogoWidget(),
              const LoginTitle(),
              const SizedBox(height: 10),
              EmailField(controller: emailController),
              const SizedBox(height: 10),
              PasswordField(
                  controller: passwordController,
                  isVisible: isVisible,
                  toggleVisibility: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  }),
              const SizedBox(height: 10),
               LoginButton(emailController: emailController, passwordController: passwordController,
               onSuccess: () {
                 // todo :Navigate to the home screen
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => HomeScreen()),
                  // );
               },
              ),
              const SizedBox(height: 10),
              SignUpPrompt(
                onSignUpTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUpView()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
