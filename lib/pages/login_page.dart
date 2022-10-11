import 'package:anime_junction/utils/colors.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Image(image: AssetImage('assets/images/logooff.png')),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "WELCOME SENPAI!",
              style: TextStyle(
                fontFamily: 'Gilroy',
                color: Colors.white,
                fontSize: 40,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: confcolor,
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 15.0),
                      hintText: 'Enter the Email',
                      hintStyle: TextStyle(color: Colors.white),
                      suffixIcon: Icon(
                        Icons.email_outlined,
                        color: Colors.white,
                      ),
                      label: Text('Email')),
                ),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17.0),
              child: Container(
                decoration: BoxDecoration(
                    color: confcolor, borderRadius: BorderRadius.circular(15)),
                child: TextFormField(
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 15.0),
                      hintText: "Enter the Password",
                      hintStyle: TextStyle(color: Colors.white),
                      suffixIcon: Icon(
                        Icons.key_sharp,
                        color: Colors.white,
                      ),
                      label: Text('Password')),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
