import 'package:flutter/material.dart';
import 'package:mini_chat_app/core/shared_widgets/default_textfield.dart';

class NameField extends StatelessWidget {

  final TextEditingController controller;

  const NameField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return defaultTextField(type: TextInputType.name,
    controller: controller,
    hint: "Enter your name",
    label: "Name",
    prefix: Icons.person,
    );
  }
}