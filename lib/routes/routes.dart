import 'package:flutter/material.dart';
import 'package:flutter_movie_app/screens/home_screen.dart';
import 'package:flutter_movie_app/screens/login_screen.dart';
import 'package:flutter_movie_app/screens/movies_detail_screen.dart';
import 'package:flutter_movie_app/screens/onboarding_screen.dart';
import 'package:flutter_movie_app/screens/register_screen.dart';

class RoutesManager {
  static const onboardingScreen = '/';

  static const homeScreen = '/homescreen';
  static const loginScreen = '/loginscreen';
  static const registerScreen = '/registerScreen';
  static const movieDetailsScreen = '/movieDetailsScreen';

  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case onboardingScreen:
        return MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        );
      case loginScreen:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      case registerScreen:
        return MaterialPageRoute(
          builder: (context) => const RegisterScreen(),
        );
        case movieDetailsScreen:
         return MaterialPageRoute(
          builder: (context) => const MovieDetailsScreen(),
        ); 
      default:
        throw const FormatException('This page could not be found');
    }
  }
}
