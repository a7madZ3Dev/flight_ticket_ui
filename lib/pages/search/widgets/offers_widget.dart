import 'package:flutter/material.dart';

import './left_side.dart';
import './right_side.dart';

class OffersWidget extends StatelessWidget {
  const OffersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        LeftSideWidget(),
        RightSideWidget(),
      ],
    );
  }
}
