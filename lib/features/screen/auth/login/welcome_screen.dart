import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_canvas/common/colors.dart';
import 'package:money_canvas/features/screen/auth/singup/signup_screen.dart';

import '../../../../common/image_string.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
            const Positioned(
              top: 0,
              left: 0,
              child: Padding(
                padding: EdgeInsets.only(top: 20, left: 10),
                child: Image(
                  height: 100,
                  width: 100,
                  image: AssetImage(tSplashlogo),
                ),
              ),
            ),
            Positioned(
              bottom: 40,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Welcome to",
                              style: GoogleFonts.aBeeZee(
                                textStyle: const TextStyle(
                                  fontSize: 40,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                "CIPHERX",
                                style: GoogleFonts.brunoAceSc(
                                  textStyle: const TextStyle(
                                    fontSize: 36,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(), // Add a spacer to push the arrow to the right
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColor.buttonColor.withOpacity(0.54),
                            ),
                            child: IconButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const SignUpScreen()));
                              },
                              icon: const Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 60,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        "The best way to track your expenses.",
                        style: GoogleFonts.aBeeZee(
                          textStyle: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
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
