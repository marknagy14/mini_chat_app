import 'package:flutter/material.dart';

import '../widgets/login_body.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          // to dismiss keyboard when tapping anywhere else on screen
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          body: LoginBody(),
        ),
      ),
    );
  }
}
