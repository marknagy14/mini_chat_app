import 'package:flutter/material.dart';
import 'package:mini_chat_app/core/shared_widgets/default_textfield.dart';

class EmailField extends StatelessWidget {

  final TextEditingController controller;

  const EmailField({super.key, required this.controller});

  

  @override
  Widget build(BuildContext context) {
    return defaultTextField(type: TextInputType.emailAddress,
     controller: controller,
     hint: "Enter your email",
     label: "Email",
     prefix: Icons.email,
     validate: (value) {
       if(value!.isEmpty){
        return "please enter valid email";
       }
       else{
        return null;
       }
     },
    );
  }
}