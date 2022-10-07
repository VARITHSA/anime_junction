import 'package:anime_junction/utils/colors.dart';
import 'package:flutter/material.dart';

import '../utils/routes.dart';

class InterfacePage extends StatelessWidget {
  const InterfacePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "How would you like To Join us.",
              style: TextStyle(
                fontFamily: 'Gilroy',
                color: Colors.white,
                fontSize: 40,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Material(
            borderRadius: BorderRadius.circular(25),
            color: ickcolor,
            child: InkWell(
              onTap: () {
                print('clicked');
              },
              child: Container(
                height: 40,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(1, 1.5),
                      blurRadius: 5,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 65,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Image.asset('assets/images/GoogleIcon.png'),
                    ),
                    const Text("Google",
                        style: TextStyle(
                            fontFamily: 'Gilroy',
                            fontSize: 30,
                            fontWeight: FontWeight.w700))
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Material(
            borderRadius: BorderRadius.circular(25),
            color: ickcolor,
            child: InkWell(
              onTap: () {
                print('clicked');
              },
              child: Container(
                height: 40,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(1, 1.5),
                      blurRadius: 5,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 65,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Image.asset('assets/images/Facebookicon.png'),
                    ),
                    const Text("Facebook",
                        style: TextStyle(
                            fontFamily: 'Gilroy',
                            fontSize: 30,
                            fontWeight: FontWeight.w700))
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Material(
            borderRadius: BorderRadius.circular(25),
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                print('clicked');
              },
              child: Container(
                height: 40,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(1, 1.5),
                      blurRadius: 5,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 65,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Image.asset('assets/images/Appleicon.png'),
                    ),
                    const Text(
                      "Apple ID",
                      style: TextStyle(
                          fontFamily: 'Gilroy',
                          fontSize: 30,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 120,
                  height: 2,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  "OR",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 120,
                  height: 2,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: (() {
                Navigator.pushNamed(context, Routes.loginPageRoute);
              }),
              child: Container(
                height: 40,
                width: 300,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(1, 1.5),
                      blurRadius: 5,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    "Login with Password",
                    style: TextStyle(
                      fontFamily: 'Gilroy',
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Don't have an account",
                style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.signUpPageRoute);
                  },
                  child: const Text(
                    " SignUP",
                    style: TextStyle(
                      fontFamily: 'Gilroy',
                      fontSize: 15,
                      color: ickcolor,
                    ),
                  ),
                ),
              ),
              const Text(
                " here.",
                style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Image(
                height: 261,
                image: AssetImage('assets/images/girlinterface.png'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
