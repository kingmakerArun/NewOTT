import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:newott/splash.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:newott/ModelTheme.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

import 'homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyAWX30uZacazjopfqDo8fYegfzFEINhjik",
        authDomain: "newott-f59bf.firebaseapp.com",
        projectId: "newott-f59bf",
        storageBucket: "newott-f59bf.appspot.com",
        messagingSenderId: "1093084989034",
        appId: "1:1093084989034:web:e52832e4dc9bf22d9cec13"),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => ModelTheme(),
        child: Consumer<ModelTheme>(
        builder: (context, ModelTheme themeNotifier, child) {
      return MaterialApp(
      builder: (context, child) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, child!),
          maxWidth: 1200,
          minWidth: 450,
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(450, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(800, name: TABLET),
            const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
            const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
          ],
          background: Container(color: Color(0xFFf5f5f5))),
      debugShowCheckedModeBanner: false,
          theme:
          themeNotifier.isDark
              ?
          ThemeData(
            useMaterial3: true,
                  colorScheme:
                  ColorScheme.fromSeed(brightness: Brightness.dark, seedColor: Colors.green),
                  textTheme:
                  GoogleFonts.montserratTextTheme(Theme.of(context).textTheme),
                  primaryTextTheme: GoogleFonts.montserratTextTheme(Theme.of(context).textTheme),
          )
              : ThemeData(
              useMaterial3: true,
                      colorScheme:
                      ColorScheme.fromSeed(brightness: Brightness.light,seedColor: Colors.red),
                      textTheme:
                      GoogleFonts.montserratTextTheme(Theme.of(context).textTheme).apply(bodyColor: Colors.black),
                      primaryTextTheme: GoogleFonts.montserratTextTheme(Theme.of(context).textTheme).apply(
                          bodyColor: Colors.black),
          ),
      home: HomePage(),
    );
        }),
    );
  }
}
