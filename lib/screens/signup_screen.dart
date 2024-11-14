// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_signup_ui/custom_design/custom_button.dart';
import 'package:login_signup_ui/custom_design/custom_text.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool ishiddenButton = true;
  void ishiddenButtonClicked() {
    setState(() {
      ishiddenButton = !ishiddenButton;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
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
          SafeArea(
            child: SingleChildScrollView(
              child: Center(
                // heightFactor: 1.2,
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    CustomText(text: 'Signup'),
                    SizedBox(height: 30),
                    SvgPicture.asset(
                      'lib/assets/icons/signup.svg',
                      height: 240,
                    ),
                    SizedBox(height: 16),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        color: const Color(0xFFf0e5ff),
                      ),
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      padding: EdgeInsets.symmetric(
                        vertical: 2,
                        horizontal: 9,
                      ),
                      child: TextField(
                        obscureText: false,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: TextStyle(
                            fontSize: 16,
                          ),
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.purple,
                            size: 18,
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(vertical: 15),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        color: const Color(0xFFf0e5ff),
                      ),
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      padding: EdgeInsets.symmetric(
                        vertical: 2,
                        horizontal: 9,
                      ),
                      child: TextField(
                        obscureText: ishiddenButton,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          hintText: 'password',
                          hintStyle: TextStyle(
                            fontSize: 16,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              ishiddenButton
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              size: 18,
                            ),
                            onPressed: ishiddenButtonClicked,
                            color: Colors.purple,
                          ),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.purple,
                            size: 18,
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(vertical: 15),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    CustomElevatedButton.dark(text: 'Signup', onPressed: () {}),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "already have an account ?",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 203, 131, 216),
                            fontSize: 16,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/login');
                          },
                          child: Text(
                            "login",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 163, 62, 181),
                              fontSize: 17,
                            ),
                          ),
                        )
                      ],
                    ),

                    SizedBox(
                      width: 270,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Divider(
                              height: 15,
                              color: Colors.purple,
                              thickness: 1,
                            ),
                          ),
                          Text(
                            ' OR ',
                            style: TextStyle(
                              color: Colors.purple[900],
                              fontSize: 18,
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              height: 15,
                              color: Colors.purple,
                              thickness: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 7),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.purple, width: 1)),
                              padding: EdgeInsets.all(10),
                              child: SvgPicture.asset(
                                'lib/assets/icons/facebook.svg',
                                height: 27,
                                colorFilter: ColorFilter.mode(
                                    Colors.purple, BlendMode.srcIn),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 7),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.purple, width: 1)),
                              padding: EdgeInsets.all(10),
                              child: SvgPicture.asset(
                                'lib/assets/icons/twitter.svg',
                                height: 27,
                                colorFilter: ColorFilter.mode(
                                    Colors.purple, BlendMode.srcIn),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 7),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.purple, width: 1)),
                              padding: EdgeInsets.all(10),
                              child: SvgPicture.asset(
                                'lib/assets/icons/google-plus.svg',
                                height: 27,
                                colorFilter: ColorFilter.mode(
                                    Colors.purple, BlendMode.srcIn),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 150),
                    // Spacer()
                  ],
                ),
              ),
            ),
          ),
          SafeArea(
            child: Positioned(
              top: 35,
              child: IconButton(
                highlightColor: Colors.amber,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.purple,
                  size: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
