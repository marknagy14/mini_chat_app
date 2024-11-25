import 'package:flutter/material.dart';
import 'package:mini_chat_app/core/shared_widgets/default_textfield.dart';
import 'package:password_strength_checker/password_strength_checker.dart';


class RegistrationPasswordField extends StatefulWidget {
  final TextEditingController controller;
  final bool isVisible;
  final Function() toggleVisibility;
  final passNotifier = ValueNotifier<PasswordStrength?>(null);

   RegistrationPasswordField({
    Key? key,
    required this.controller,
    required this.isVisible,
    required this.toggleVisibility,
  }) : super(key: key);

  @override
  State<RegistrationPasswordField> createState() => _RegistrationPasswordFieldState();
}

class _RegistrationPasswordFieldState extends State<RegistrationPasswordField> {
  final FocusNode _focusNode = FocusNode();
  bool _showStrengthBar = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        _showStrengthBar = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        defaultTextField(
          type: TextInputType.visiblePassword,
          controller: widget.controller,
          hint: "Enter your password",
          label: "Password",
          prefix: Icons.lock,
          isObsecure: !widget.isVisible,
          suffix: widget.isVisible ? Icons.visibility_off : Icons.visibility,
          pressed: widget.toggleVisibility,
          onChange: (value) {
            widget.passNotifier.value = PasswordStrength.calculate(text: value);
          },
          focusNode: _focusNode,
        ),
        if (_showStrengthBar) ...[
          const SizedBox(height: 5),
          PasswordStrengthChecker(
            strength: widget.passNotifier,
          ),
        ],
      ],
    );
  }
}
