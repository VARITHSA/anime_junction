import 'package:anime_junction/utils/colors.dart';
import 'package:flutter/material.dart';

import '../utils/routes.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPage = 3;
  PageController onboardingcontroller = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    onboardingcontroller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    onboardingcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          _currentPage != _numPage - 1
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: (() {
                        Navigator.pushNamed(context, Routes.interfaceRoute);
                      }),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(10.0),
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          "SKIP",
                          style: TextStyle(
                            fontFamily: 'Gilroy',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )),
                )
              : const Spacer()
        ],
      ),
      body: Stack(
        children: [
          Container(
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: onboardingcontroller,
              onPageChanged: ((value) {
                setState(() {
                  _currentPage = value;
                });
              }),
              children: [
                Stack(
                  children: const [
                    Positioned(
                      top: 0,
                      left: -30,
                      right: -200,
                      bottom: 0,
                      child: Image(
                        image: AssetImage('assets/images/ANIMEJUNCTION01.png'),
                      ),
                    ),
                    Image(image: AssetImage('assets/images/moonon.png')),
                    Positioned(
                      left: -40,
                      top: 400,
                      child: Image(
                        height: 400,
                        width: 300,
                        image: AssetImage('assets/images/swordon.png'),
                      ),
                    ),
                    Positioned(
                      top: 300,
                      left: 20,
                      child: Text(
                        "Hey! weebs we got \neverything you desire.",
                        style: TextStyle(
                            fontFamily: 'Gilroy',
                            fontSize: 35,
                            color: Colors.white,
                            fontWeight: FontWeight.w100),
                      ),
                    )
                  ],
                ),
                Stack(
                  children: const [
                    Positioned(
                      top: 120,
                      left: -30,
                      bottom: 190,
                      child: Image(
                          image:
                              AssetImage('assets/images/ANIMEJUNCTION01.png')),
                    ),
                    Positioned(
                      top: 40,
                      child: Image(
                          image: AssetImage('assets/images/circleson2.png')),
                    ),
                    Positioned(
                      top: 120,
                      left: -5,
                      child:
                          Image(image: AssetImage('assets/images/girlon2.png')),
                    ),
                    Positioned(
                      top: 550,
                      left: 30,
                      right: 0,
                      child: Text(
                        'Choose your stuff we got everything here!',
                        style: TextStyle(
                          fontFamily: 'Gilroy',
                          color: Colors.white,
                          fontSize: 35,
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    const Positioned(
                      top: 0,
                      left: -50,
                      right: 0,
                      bottom: 0,
                      child: Image(
                        fit: BoxFit.none,
                        image: AssetImage('assets/images/on3.png'),
                      ),
                    ),
                    Positioned(
                      top: 500,
                      left: -60,
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        width: 500,
                        height: 300,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.black,
                              Colors.transparent,
                              Colors.transparent,
                              Colors.black,
                              Colors.black
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: [0, 0, -1.2, 0.8, 1],
                          ),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              "Welcome",
                              style: TextStyle(
                                  fontFamily: 'Gilroy',
                                  color: Colors.white,
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              "To",
                              style: TextStyle(
                                  fontFamily: 'Gilroy',
                                  color: Colors.white,
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                SizedBox(
                                  width: 40,
                                ),
                                Text(
                                  "ANIME",
                                  style: TextStyle(
                                      fontFamily: 'Gilroy',
                                      color: ickcolor,
                                      fontSize: 35,
                                      fontWeight: FontWeight.w900),
                                ),
                                Text(
                                  "JUNCTION",
                                  style: TextStyle(
                                      fontFamily: 'Gilroy',
                                      color: Colors.white,
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: _currentPage != _numPage - 1
          ? FloatingActionButton(
              onPressed: () {
                onboardingcontroller.nextPage(
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.ease);
              },
              backgroundColor: ickcolor,
              child: const Center(child: Icon(Icons.arrow_forward_ios_rounded)),
            )
          : InkWell(
              focusColor: Colors.white,
              highlightColor: Colors.white,
              onTap: () {
                Navigator.pushNamed(context, Routes.interfaceRoute);
              },
              child: Container(
                height: 60,
                width: 250,
                decoration: BoxDecoration(
                  color: ickcolor,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: const [
                    BoxShadow(
                      color: ickcolor,
                      offset: Offset(0.0, 1),
                      spreadRadius: 2,
                      blurRadius: 23,
                    )
                  ],
                ),
                child: const Center(
                  child: Text(
                    "GET STARTED",
                    style: TextStyle(
                        fontFamily: 'Gilroy',
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
      floatingActionButtonLocation: _currentPage != _numPage - 1
          ? FloatingActionButtonLocation.endFloat
          : FloatingActionButtonLocation.centerFloat,
    );
  }
}
