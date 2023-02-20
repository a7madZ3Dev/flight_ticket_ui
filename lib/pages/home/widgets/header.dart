import 'package:gap/gap.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_styles.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Good Morning',
                style: Styles.headLineStyle3,
              ),
              Gap(5),
              Text(
                'Book Tickets',
                style: Styles.headLineStyle1,
              ),
            ],
          ),
          Container(
            height: 60,
            width: 60,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Image.asset(
              'assets/images/img_1.png',
              fit: BoxFit.cover,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      ),
    );
  }
}
