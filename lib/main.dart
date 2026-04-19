import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:student_books/Pages/home_page.dart';
import 'package:student_books/Pages/hors_connexion.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: 'assets/images/logo.png',
        splashIconSize: 400,
        duration: 1500,
        backgroundColor: Colors.white,
        splashTransition: SplashTransition.fadeTransition,
        nextScreen: const HomePage(),
      ),
      routes: {
        'Home': (context) => const HomePage(),
        'HorLine': (context) => const HorsConnexion(),
      },
    );
  }
}
