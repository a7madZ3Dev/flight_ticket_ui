import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final double? height;
  final double? width;
  final VoidCallback? myFunction;
  final String buttonLabel;
  final Color? buttonColor;
  const MyButton(
      {required this.height,
      required this.buttonLabel,
      required this.myFunction,
      this.buttonColor,
      this.width,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: height,
      child: MaterialButton(
        onPressed: myFunction,
        child: Text(
          buttonLabel,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: buttonColor ?? Colors.blue,
      ),
    );
  }
}
