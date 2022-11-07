import 'package:dating_app_twitch/resources/auth_methods.dart';
import 'package:dating_app_twitch/utils/strings.dart';
import 'package:dating_app_twitch/utils/textStyles.dart';
import 'package:dating_app_twitch/view/screens/home_screen.dart';
import 'package:dating_app_twitch/view/widgets/custom_button.dart';
import 'package:dating_app_twitch/view/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  static const routeName = '/signUp';

  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final AuthMethods _authMethods = AuthMethods();

  void signUpUser() async {
    bool res = await _authMethods.signUpUser(context, _emailController.text,
        _userNameController.text, _passwordController.text);
    if(res){
      Navigator.pushNamed(context, HomeScreen.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(Strings.signUp),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Size.height * 0.1,
              ),
              const Text(
                Strings.email,
                style: AppTextStyles.signUpTextHeading,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: CustomTextField(controller: _emailController),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                Strings.userName,
                style: AppTextStyles.signUpTextHeading,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: CustomTextField(controller: _userNameController),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                Strings.password,
                style: AppTextStyles.signUpTextHeading,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: CustomTextField(controller: _passwordController),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(text: Strings.signUp, onPressed:signUpUser)
            ],
          ),
        ),
      ),
    );
  }
}
