import 'package:dating_app_twitch/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomButton({Key? key,required this.text,required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: primaryColor,
          minimumSize: const Size(double.infinity, 40),
        ),
        onPressed: onPressed,
        child: Center(
          child: Text(text),
        ));
  }
}
