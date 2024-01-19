import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_canvas/common/colors.dart';
import 'package:money_canvas/features/screen/auth/login/welcome_screen.dart';

import '../../../common/image_string.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const WelcomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mainColor,
      body: SafeArea(
        child: Stack(
          children: [
            const Positioned(
              top: 0,
              right: 0,
              child: Image(
                image: AssetImage(tSplashTopIcon),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              bottom: 0,
              left: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(
                    image: AssetImage(tSplashlogo),
                  ),
                  Text(
                    "CIPHERX",
                    style: GoogleFonts.brunoAceSc(
                      textStyle: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "By",
                    style: GoogleFonts.cambay(
                      textStyle: TextStyle(
                        fontSize: 16,
                        color: Colors.white.withOpacity(0.54),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Open Source",
                        style: GoogleFonts.cambay(
                          textStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.white.withOpacity(0.54),
                          ),
                        ),
                      ),
                      Text(
                        " Community",
                        style: GoogleFonts.cambay(
                          textStyle: TextStyle(
                            fontSize: 16,
                            color: AppColor.splashColor.withOpacity(
                                0.54), // Replace with your desired color
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Positioned(
              bottom: 0,
              left: 0,
              child: Image(
                image: AssetImage(tSplashTopIcon2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
