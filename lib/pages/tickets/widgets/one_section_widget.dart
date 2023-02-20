import 'package:flutter/material.dart';

import '../../../utils/app_styles.dart';
import '../../../utils/extensions.dart';

class OneSectionWidget extends StatelessWidget {
  final Color containerColor;
  final Color firstTextColor;
  final Color secondTextColor;
  final Color lineColor;
  final List<String> information;
  final bool showBorderTop;
  final bool showBorderBottom;
  final bool showImage;
  const OneSectionWidget({
    Key? key,
    required this.information,
    this.containerColor = Colors.white,
    this.lineColor = Colors.white,
    this.firstTextColor = Colors.white,
    this.secondTextColor = Colors.white,
    this.showBorderTop = false,
    this.showBorderBottom = false,
    this.showImage = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.portrait ? context.width * 0.8 : context.width * 0.6,
      padding: const EdgeInsets.all(15),
      height: context.portrait ? context.height * 0.105 : context.height * 0.35,
      decoration: BoxDecoration(
        color: containerColor,
        border: Border(
          top: showBorderTop ? BorderSide(color: lineColor) : BorderSide.none,
          bottom:
              showBorderBottom ? BorderSide(color: lineColor) : BorderSide.none,
        ),
      ),
      child: Column(children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  if (showImage)
                    Image.asset(
                      'assets/images/visa.png',
                      height: 50,
                      width: 50,
                    ),
                  Text(
                    information[0],
                    style:
                        Styles.headLineStyle3.copyWith(color: firstTextColor),
                  ),
                ],
              ),
              Text(
                information[1],
                style: Styles.headLineStyle3.copyWith(color: firstTextColor),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                information[2],
                style: Styles.headLineStyle4.copyWith(
                  color: secondTextColor,
                ),
              ),
              Text(
                information[3],
                style: Styles.headLineStyle4.copyWith(
                  color: secondTextColor,
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
