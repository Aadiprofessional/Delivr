import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:delivr/loginPage/otp_login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';

void main() => runApp(Delivr());

class Delivr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Delivr',
      home: AnimatedSplashScreen(
        duration: 3100,
        splash: Image.asset(
          'images/video.gif',
          fit: BoxFit.cover,
        ),
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.fade,
        backgroundColor: Colors.transparent,
        splashIconSize: 1000,
        nextScreen: GetStartedScreen(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class GetStartedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'images/intro3.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
              bottom: 30,
              left: 20,
              right: 20,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const OtpPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 251, 176, 2),
                  onPrimary: const Color.fromARGB(255, 0, 0, 0),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 120, vertical: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(57.0),
                  ),
                ),
                child: const Text(
                  'Next',
                  style: TextStyle(fontSize: 18),
                ),
              )),
        ],
      ),
    );
  }
}
