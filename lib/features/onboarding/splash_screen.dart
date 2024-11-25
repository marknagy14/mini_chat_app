import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:mini_chat_app/core/themes/styles.dart';
import 'package:mini_chat_app/core/constants/asset_images.dart';
import 'package:mini_chat_app/features/authentication/login/presentation/view/login_view.dart';



class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(splash:
      SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LottieBuilder.asset(AssetImages.logoAnimated),
            const SizedBox(height: 60),
            Text("Stay Connected!", style: Styles.textStyle24,)
          ],
        ),
      )
     , nextScreen:const LogInView(), splashIconSize: 500,);
  }
}