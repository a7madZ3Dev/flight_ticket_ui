import 'package:flutter/material.dart';

import '../../../utils/app_styles.dart';

class CircleDotWidget extends StatelessWidget {
  const CircleDotWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Styles.textColor,
            width: 2,
          )),
      child: const CircleAvatar(
        backgroundColor: Colors.black,
        maxRadius: 6,
      ),
    );
  }
}
