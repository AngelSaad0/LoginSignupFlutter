import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_signup_ui/custom_design/custom_button.dart';
import 'package:login_signup_ui/custom_design/custom_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                    CustomText(text: 'Login'),
                    SizedBox(height: 30),
                    SvgPicture.asset('lib/assets/icons/login.svg'),
                    SizedBox(height: 30),
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
                    SizedBox(height: 20),
                    CustomElevatedButton.dark(text: 'Login', onPressed: () {}),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "dont have an account ?",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 203, 131, 216),
                            fontSize: 16,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/sign');
                          },
                          child: Text(
                            "Signup",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 163, 62, 181),
                              fontSize: 17,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 200),
                    // Spacer()
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
