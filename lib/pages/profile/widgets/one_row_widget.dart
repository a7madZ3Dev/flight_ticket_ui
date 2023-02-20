import 'package:gap/gap.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_styles.dart';

class OneRowWidget extends StatelessWidget {
  final Color firstColor;
  final Color secondColor;
  final List<String> info;
  const OneRowWidget(
      {Key? key,
      required this.info,
      required this.firstColor,
      required this.secondColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              info[0],
              style: Styles.headLineStyle3.copyWith(color: firstColor),
            ),
            const Gap(8),
            Text(
              info[1],
              style: Styles.headLineStyle4.copyWith(color: secondColor),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              info[2],
              style: Styles.headLineStyle3.copyWith(color: firstColor),
            ),
            const Gap(8),
            Text(
              info[3],
              style: Styles.headLineStyle4.copyWith(color: secondColor),
            ),
          ],
        )
      ],
    );
  }
}
