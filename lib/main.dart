import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/routes/routes.dart';

import 'package:flutter_movie_app/screens/login_screen.dart';
import 'package:flutter_movie_app/screens/onboarding_screen.dart';
import 'package:flutter_movie_app/screens/register_screen.dart';

import 'package:google_fonts/google_fonts.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: RoutesManager.onboardingScreen,
      onGenerateRoute: RoutesManager.getRoute,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: GoogleFonts.openSans().fontFamily),
      // home: const OnboardingScreen(),
    );
  }
}
