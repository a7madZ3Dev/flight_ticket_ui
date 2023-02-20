import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import '../../../utils/app_styles.dart';
import '../../../utils/extensions.dart';

class LeftSideWidget extends StatelessWidget {
  const LeftSideWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: context.portrait ? context.height * 0.45 : context.height * 0.7,
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(21),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                margin: const EdgeInsets.only(bottom: 15),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21),
                ),
                child: Image.asset(
                  'assets/images/sit.jpg',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Text(
                cards['firstTitle']!,
                style: Styles.headLineStyle2.copyWith(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
