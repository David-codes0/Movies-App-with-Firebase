import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_movie_app/components/app_textfield.dart';
import 'package:flutter_movie_app/components/custom_outline.dart';

import 'package:flutter_movie_app/constants.dart';
import 'package:flutter_movie_app/routes/routes.dart';
import 'package:glassmorphism/glassmorphism.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController email;
  late TextEditingController password;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    email = TextEditingController();
    password = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    email.dispose();
    password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login',
          style: TextStyle(fontSize: 30),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Constants.kBlackColor,
      extendBody: true,
      body: SizedBox(
        height: screenHeight,
        width: screenWidth,
        child: Stack(
          children: [
            Positioned(
              top: 10,
              left: -60,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Constants.kGreenColor.withOpacity(0.3),
                  shape: BoxShape.circle,
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 100,
                    sigmaY: 100,
                  ),
                  child: const SizedBox(
                    height: 200,
                    width: 200,
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.4,
              right: -60,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Constants.kPinkColor.withOpacity(0.3),
                  shape: BoxShape.circle,
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 100,
                    sigmaY: 100,
                  ),
                  child: const SizedBox(
                    height: 200,
                    width: 200,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: -60,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Constants.kGreenColor.withOpacity(0.3),
                  shape: BoxShape.circle,
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 100,
                    sigmaY: 100,
                  ),
                  child: const SizedBox(
                    height: 200,
                    width: 200,
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      'Hi,\nWelcome Back',
                      style: TextStyle(
                        fontSize: screenWidth * 0.09,
                        color: Constants.kWhiteColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.05,
                ),
                GlassmorphicContainer(
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.45,
                  borderRadius: 10,
                  linearGradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Constants.kWhiteColor.withOpacity(0.1),
                      Constants.kWhiteColor.withOpacity(0.1),
                    ],
                  ),
                  border: 3,
                  blur: 50,
                  borderGradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Constants.kWhiteColor.withOpacity(0.1),
                      Constants.kWhiteColor.withOpacity(0.1),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: screenHeight * 0.01,
                        ),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 14.0),
                            child: Text(
                              'Email',
                              style: TextStyle(
                                fontSize: 30,
                                color: Constants.kWhiteColor,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.02,
                        ),
                        AppTextField(
                          color: Constants.kGreyColor,
                          labelText: 'Please Enter your Email address',
                          controller: email,
                        ),
                        SizedBox(
                          height: screenHeight * 0.03,
                        ),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 14.0),
                            child: Text(
                              'Password',
                              style: TextStyle(
                                fontSize: 30,
                                color: Constants.kWhiteColor,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.02,
                        ),
                        AppTextField(
                          color: Constants.kGreyColor,
                          labelText: 'Please Enter your password',
                          controller: email,
                        ),
                        SizedBox(
                          height: screenHeight * 0.03,
                        ),
                        MainCustomButton(
                          screenWidth: screenWidth,
                          screenHeight: screenHeight,
                          text: 'Login',
                          size: 0.06,
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed(RoutesManager.homeScreen);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Text('Forgot password ?',
                          style: TextStyle(
                              fontSize: screenWidth * 0.06,
                              color: Constants.kWhiteColor)),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MainCustomButton extends StatelessWidget {
  const MainCustomButton({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
    required this.text,
    required this.size,
    required this.onPressed,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;
  final String text;
  final double size;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return CustomOutline(
      strokeWidth: 4,
      radius: screenWidth * 0.9,
      gradient: const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Constants.kGreenColor,
          Constants.kPinkColor,
        ],
      ),
      width: screenWidth * 0.3,
      height: screenHeight * 0.07,
      padding: const EdgeInsets.all(1),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Constants.kGreenColor.withOpacity(0.5),
              Constants.kPinkColor.withOpacity(0.5),
            ],
          ),
          borderRadius: BorderRadius.circular(24),
        ),
        child: TextButton(
          onPressed: onPressed,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  fontSize: screenWidth * size, color: Constants.kWhiteColor),
            ),
          ),
        ),
      ),
    );
  }
}
