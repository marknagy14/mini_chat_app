import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:mini_chat_app/core/shared_widgets/default_textfield.dart';

class PhoneField extends StatefulWidget {
  final TextEditingController controller;

  const PhoneField({super.key, required this.controller});

  @override
  _PhoneFieldState createState() => _PhoneFieldState();
}

class _PhoneFieldState extends State<PhoneField> {
  String countryCode = '+20'; // Default country code

  @override
  Widget build(BuildContext context) {
    return defaultTextField(
      type: TextInputType.phone,
      controller: widget.controller,
      hint: "Enter your phone",
      label: "Phone",
      prefix: Icons.phone_android,
      prefixWidget: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          
          CountryCodePicker(
            onChanged: (country) {
              setState(() {
                countryCode = country.dialCode!;
              });
            },
            initialSelection: 'EG',
            favorite: ['+20', 'EG'],
            showCountryOnly: false,
            showOnlyCountryWhenClosed: false,
            alignLeft: false,
          ),
          const SizedBox(
            height: 40, // Set height to match your TextField's height
            child: VerticalDivider(
              color: Colors.grey,
              thickness: 2, // Adjust thickness as needed
            ),
          )
        ],
      ),
    );
  }
}
