import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

import '../../../utils/functions.dart';
import '../../../utils/app_styles.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getSize(context),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: getSize(context),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Image.asset(
              'assets/images/img_1.png',
              fit: BoxFit.cover,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const Gap(8),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: Text(
                  'Book Tickets',
                  style: Styles.headLineStyle1,
                ),
              ),
              const Gap(8),
              Expanded(
                child: Text(
                  'New-York',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade500,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(right: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(21),
                    color: const Color(0xFFFEF4F3),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(3),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xFF526799)),
                        child: const Icon(
                          FluentSystemIcons.ic_fluent_shield_filled,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                      const Gap(5),
                      const Text(
                        'Premium Status',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF526799),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {},
                child: Text(
                  'Edit',
                  style: Styles.textStyle.copyWith(
                    color: primary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
