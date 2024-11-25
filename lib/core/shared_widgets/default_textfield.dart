import 'package:flutter/material.dart';
import 'package:mini_chat_app/core/themes/color_app.dart';


/*a function that returns a widget -> TextFormField */
Widget defaultTextField({
TextEditingController? controller,
required TextInputType type,
Function(String)? onChange,
// FormFieldValidator? validate,
String? label,
String? hint,
IconData? prefix,
bool isObsecure = false,
IconData? suffix,
Function()? pressed,
Function()? tap,
bool? enable,

}) => TextFormField(
  controller: controller,
  keyboardType: type,
  onChanged: onChange,
  // validator: validate,
  decoration: InputDecoration(labelText: label,
    hintText: hint,
    prefixIcon: Icon(prefix),
    suffixIcon: suffix != null? IconButton(icon: Icon(suffix), onPressed: pressed
     ,)
     : null,
     border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)
     ),
     focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color:ColorApp.primaryColor,width:2.0))),
     obscureText: isObsecure,
     onTap: tap,
     enabled: enable,
);