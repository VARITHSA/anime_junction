import 'package:anime_junction/utils/colors.dart';
import 'package:flutter/material.dart';

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
            padding: EdgeInsets.all(20.0),
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
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(1, 1.5),
                      blurRadius: 20,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
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
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(1, 1.5),
                      blurRadius: 20,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
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
            color: ickcolor,
            child: InkWell(
              onTap: () {
                print('clicked');
              },
              child: Container(
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(1, 1.5),
                      blurRadius: 20,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset('assets/images/Appleicon.png'),
                    ),
                    const Text("Apple ID",
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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Image(
                height: 266,
                image: AssetImage('assets/images/girlinterface.png'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
