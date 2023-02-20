import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  final String buttonLabel;
  final VoidCallback? funButton;
  final double? padding;
  const TitleWidget({
    Key? key,
    required this.title,
    required this.buttonLabel,
    this.padding,
    this.funButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding!),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Styles.headLineStyle2,
          ),
          InkWell(
            onTap: funButton,
            child: Text(
              buttonLabel,
              style: Styles.textStyle.copyWith(color: primary),
            ),
          ),
        ],
      ),
    );
  }
}
