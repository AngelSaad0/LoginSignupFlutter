import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_signup_ui/custom_design/custom_button.dart';
import 'package:login_signup_ui/custom_design/custom_text.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Center(
              child: SafeArea(
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    CustomText(text: 'welcome'),
                    SizedBox(height: 30),
                    SvgPicture.asset(
                      'lib/assets/icons/chat.svg',
                      width: screenWidth - 80,
                    ),
                    SizedBox(height: 30),
                    CustomElevatedButton.dark(
                        text: "Login",
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        }),
                    SizedBox(height: 15),
                    CustomElevatedButton.light(
                      text: "Signup",
                      onPressed: () {
                        Navigator.pushNamed(context, '/sign');
                      },
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0,
              child: Image.asset(
                'lib/assets/images/main_top.png',
                height: 150,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                'lib/assets/images/login_bottom.png',
                height: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
