import 'package:anime_junction/utils/colors.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPage = 3;
  final PageController _pageController = PageController(initialPage: 0);
  final _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: PageView(
        physics: const ClampingScrollPhysics(),
      ),
    
    );
  }
}
