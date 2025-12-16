import 'package:flutter/material.dart';
import 'package:proyojon/componant/app_button/app_button.dart';
import 'package:proyojon/utils/constant/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 52),
            child: AppButton(
              onTap: (){

                print('Hello Dart');

              },
              buttonHeight: 52,
              buttonWidth: double.maxFinite,
              buttonColor: AppColors.primaryBlue,
              fontColor: Colors.white,
              fontSize: 18,
              text: 'Sign In',

            ),
          )
        ],
      ),
    );
  }
}
