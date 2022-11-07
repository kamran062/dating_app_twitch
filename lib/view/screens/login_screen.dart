import 'package:flutter/material.dart';

import '../../utils/strings.dart';
import '../../utils/textStyles.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_textfield.dart';

class LogInScreen extends StatefulWidget {
  static const routeName = '/login';
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(Strings.login),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Size.height*0.1,),
              const Text(Strings.email,style: AppTextStyles.signUpTextHeading,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: CustomTextField(controller: _emailController),
              ),
              const SizedBox(height: 20,),

              const Text(Strings.password,style: AppTextStyles.signUpTextHeading,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: CustomTextField(controller: _passwordController),
              ),
              const SizedBox(height: 20,),
              CustomButton(text: Strings.login, onPressed: (){})
            ],
          ),
        ),
      ),
    );
  }
}
