import 'package:flutter/material.dart';
import 'package:mini_chat_app/core/shared_widgets/default_textfield.dart';

class PasswordField extends StatelessWidget {
  final TextEditingController controller;
  bool isVisible = false;
  VoidCallback toggleVisibility;

  PasswordField({super.key, required this.controller, required this.toggleVisibility,
  required this.isVisible});

@override
  Widget build(BuildContext context) {
    return defaultTextField(type: TextInputType.visiblePassword,
     controller: controller,
     hint: "Enter your password",
     label: "Password",
     prefix: Icons.lock,
     isObsecure: !isVisible,
    suffix: (!isVisible) ? Icons.visibility: Icons.visibility_off
    , pressed:toggleVisibility);
  }
}