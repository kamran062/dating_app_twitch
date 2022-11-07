import 'package:dating_app_twitch/providers/user_provider.dart';
import 'package:dating_app_twitch/utils/colors.dart';
import 'package:dating_app_twitch/view/screens/home_screen.dart';
import 'package:dating_app_twitch/view/screens/login_screen.dart';
import 'package:dating_app_twitch/view/screens/signup_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'view/screens/onboarding_screens.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_)=> UserProvider(),)
  ],
  child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dating App Twitch',
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: backgroundColor,
        appBarTheme: AppBarTheme.of(context).copyWith(
          backgroundColor: backgroundColor,
          elevation: 0,
          titleTextStyle: const TextStyle(
            color: primaryColor,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          iconTheme: const IconThemeData(
            color: primaryColor
          )
        )
      ),
      routes: {
        OnboardingScreen.routeName: (context)=> const OnboardingScreen(),
        LogInScreen.routeName: (context)=> const LogInScreen(),
        SignUpScreen.routeName :(context)=> const SignUpScreen(),
        HomeScreen.routeName : (context)=> const HomeScreen(),
      },
      home: const OnboardingScreen(),
    );
  }
}

