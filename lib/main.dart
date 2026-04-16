import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:student_books/Pages/affichage_livres.dart';
import 'package:student_books/Pages/emplois_des_temps.dart';
import 'package:student_books/Pages/home_page.dart';
import 'package:student_books/Pages/hors_connexion.dart';
import 'package:student_books/Pages/level_four.dart';
import 'package:student_books/Pages/level_one.dart';
import 'package:student_books/Pages/level_three.dart';
import 'package:student_books/Pages/level_two.dart';

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

        //-------------------------------Levels---------------------------------
        'Level1S1': (context) => LevelOneS1(),
        'Level1S2': (context) => LevelOneS2(),
        'Level2S1': (context) => LevelTwoS1(),
        'Level2S2': (context) => LevelTwoS2(),
        'Level3S1': (context) => LevelThreeS1(),
        'Level3S2': (context) => LevelThreeS2(),
        'Level4S1': (context) => LevelFourS1(),
        'Level4S2': (context) => LevelFourS2(),

        'Time1Years': (context) => Time1Years(),
        'Time2Years': (context) => Time2Years(),
        'Time3Years': (context) => Time3Years(),
        'Time4Years': (context) => Time4Years(),

        'BooksA1': (context) => BooksA1(),
        'BooksA2': (context) => BooksA2(),
        'BooksA3': (context) => BooksA3(),
        'BooksA4': (context) => BooksA4(),
      },
    );
  }
}
