import 'package:flutter/material.dart';
import 'package:mini_chat_app/features/authentication/login/presentation/widgets/email_field.dart';
import 'package:mini_chat_app/features/authentication/login/presentation/widgets/logo_widget.dart';

import 'package:mini_chat_app/features/authentication/signup/presentation/view/widgets/name_field.dart';
import 'package:mini_chat_app/features/authentication/signup/presentation/view/widgets/phone_field.dart';
import 'package:mini_chat_app/features/authentication/signup/presentation/view/widgets/registration_password_field.dart';
import 'package:mini_chat_app/features/authentication/signup/presentation/view/widgets/signup_title.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
 
  TextEditingController phoneController = TextEditingController();

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
              const SignUpTitle(),
              const SizedBox(height: 10),
              NameField(controller: nameController),
              const SizedBox(height: 10),
              EmailField(controller: emailController),
              const SizedBox(height: 10),
              PhoneField(controller: phoneController),
              const SizedBox(height: 10),
              RegistrationPasswordField(
                controller: passwordController,
                toggleVisibility: () {
                  setState(() {
                    isVisible = !isVisible;
                  });
                },
                isVisible: isVisible,
              )
            ,
            
             ],
          ),
        ),
      ),
    );
  }
}
