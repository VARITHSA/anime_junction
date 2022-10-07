import 'package:anime_junction/onboarding/onboarding.dart';
import 'package:anime_junction/pages/interface_page.dart';
import 'package:anime_junction/pages/login_page.dart';
import 'package:anime_junction/pages/signUp_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const OnboardingScreen(),
      routes: {
        Routes.interfaceRoute: (context) => const InterfacePage(),
        Routes.loginPageRoute: (context) => const LoginPage(),
        Routes.signUpPageRoute: (context) => const SignUpPage(),
      },
    );
  }
}
