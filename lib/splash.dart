import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'login page.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      AnimatedSplashScreen(
        backgroundColor: Colors.black,
        splash:
        Image.network("https://media.licdn.com/dms/image/D5622AQERMCL7aDri_A/feedshare-shrink_2048_1536/0/1684816012283?e=2147483647&v=beta&t=fvX1Eg9jsd6pkdA6LNupAHVFoqKPx2YLiBIX7BdAz6I",
            height: 300,width: 150,
            fit:BoxFit.fill
        ),
        nextScreen: LoginPage(),
        duration:500,
        splashTransition: SplashTransition.fadeTransition,
      ),
    );
  }
}

