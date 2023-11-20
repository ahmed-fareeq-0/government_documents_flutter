import 'package:flutter/material.dart';
import 'signUpScreen.dart';

import 'signInScreen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xff61677A),
          Color(0xffD8D9DA),
        ])),
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.only(top: 200.0),
            child: Image(
              image: AssetImage('assets/logoee.png'),
              width: 200,
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          const Text(
            'مرحبا بك',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const loginScreen()));
            },
            child: Container(
              height: 53,
              width: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.white),
              ),
              child: const Center(
                child: Text(
                  'تسحيل دخول',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const RegScreen()));
            },
            child: Container(
              height: 53,
              width: 320,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.white),
              ),
              child: const Center(
                child: Text(
                  'تسجيل',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
          ),
          // Spacer(),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              'هل نسيت كلمة المرور؟',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ), //
        ]),
      ),
    );
  }
}
