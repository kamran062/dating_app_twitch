import 'package:dating_app_twitch/utils/strings.dart';
import 'package:dating_app_twitch/utils/textStyles.dart';
import 'package:dating_app_twitch/view/screens/login_screen.dart';
import 'package:dating_app_twitch/view/screens/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';

class OnboardingScreen extends StatelessWidget {
  static const routeName = '/onboarding';
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 18.0),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children:  [
           const Text(Strings.welcomeToTwitch,style: AppTextStyles.onBoardingWelcome,textAlign: TextAlign.center,),
           const SizedBox(height: 20,),
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 8.0),
             child: CustomButton(text: Strings.login, onPressed: () {
               Navigator.pushNamed(context, LogInScreen.routeName);
             },),
           ),
           CustomButton(text: Strings.signUp, onPressed: () {
             Navigator.pushNamed(context, SignUpScreen.routeName);
           },)
         ],
       ),
     ),
    );
  }
}
