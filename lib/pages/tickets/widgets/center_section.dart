import 'package:flutter/material.dart';

import '../../../utils/app_styles.dart';
import '../../../utils/extensions.dart';
import '../../../widgets/middle_dashes_widget.dart';

class CenterSectionFromTicket extends StatelessWidget {
  final Color containerColor;
  final Color firstTextColor;
  final Color secondTextColor;
  final Color dashesColor;
  final Color lineColor;
  const CenterSectionFromTicket({
    Key? key,
    this.containerColor = Colors.white,
    this.dashesColor = Colors.white,
    this.lineColor = Colors.white,
    this.firstTextColor = Colors.white,
    this.secondTextColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.portrait ? context.width * 0.8 : context.width * 0.6,
      padding: const EdgeInsets.all(15),
      height: context.portrait ? context.height * 0.35 : context.height * 1.05,
      decoration: BoxDecoration(
        color: containerColor,
        border: Border(
          top: BorderSide(color: lineColor),
          bottom: BorderSide(color: lineColor),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Flutter DB',
                  style: Styles.headLineStyle3.copyWith(color: firstTextColor),
                ),
                Text(
                  '5221-478566',
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
                  'Passenger',
                  style: Styles.headLineStyle4.copyWith(
                    color: secondTextColor,
                  ),
                ),
                Text(
                  'Passport',
                  style: Styles.headLineStyle4.copyWith(
                    color: secondTextColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MiddleDashesWidget(color: dashesColor),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '0055 444 77147',
                  style: Styles.headLineStyle3.copyWith(color: firstTextColor),
                ),
                Text(
                  'B2SG28',
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
                  'Number of E-ticket',
                  style: Styles.headLineStyle4.copyWith(
                    color: secondTextColor,
                  ),
                ),
                Text(
                  'Booking code',
                  style: Styles.headLineStyle4.copyWith(
                    color: secondTextColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MiddleDashesWidget(color: dashesColor),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/visa.png',
                      height: 50,
                      width: 50,
                    ),
                    Text(
                      ' *** 2462',
                      style:
                          Styles.headLineStyle3.copyWith(color: firstTextColor),
                    ),
                  ],
                ),
                Text(
                  '\$249.99',
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
                  'Payment method',
                  style: Styles.headLineStyle4.copyWith(
                    color: secondTextColor,
                  ),
                ),
                Text(
                  'Price',
                  style: Styles.headLineStyle4.copyWith(
                    color: secondTextColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
