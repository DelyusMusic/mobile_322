import 'package:flutter_menu/pages/auth.dart';
import 'package:flutter_menu/pages/home.dart';
import 'package:flutter_menu/pages/landing.dart';
import 'package:flutter_menu/pages/reg.dart';

final routes = {
  '/': (context) => const LandingPage(),
  '/auth': (context) => const AuthPage(),
  '/reg': (context) => const RegistrationPage(),
  '/home': (context) => const HomePage(),
};
