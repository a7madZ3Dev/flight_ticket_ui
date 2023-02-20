import 'package:flutter/material.dart';

import './bottom_bar.dart';
import '../utils/app_styles.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book Tickets',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primary,
        scaffoldBackgroundColor: Styles.bgColor,
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Styles.textFiledColor,
          hintStyle: const TextStyle(color: colorHeadLine),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
        ),
      ),
      home: const BottomBar(),
    );
  }
}
