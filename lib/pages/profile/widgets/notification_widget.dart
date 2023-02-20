import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

import '../../../utils/extensions.dart';
import '../../../utils/app_styles.dart';
import '../../../widgets/shape_in_right.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: context.portrait ? context.height * 0.10 : context.height * 0.22,
      decoration: const BoxDecoration(
        color: Styles.firstFlightCardColor,
        borderRadius: BorderRadius.all(Radius.circular(21)),
      ),
      child: Stack(
        children: [
          const Positioned(
            top: -24,
            right: -24,
            child: ShapeInRight(color: Color(0xFF264CD2)),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: Row(children: [
              LayoutBuilder(
                builder: ((context, constraints) {
                  return CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: constraints.maxHeight * 0.4,
                    child: Icon(
                      FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                      size: constraints.maxHeight * 0.4,
                      color: primary,
                    ),
                  );
                }),
              ),
              const Gap(10),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('You\'ve got a new award',
                      style: Styles.headLineStyle3.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                  const Text(
                    'You have 160 flights in a year',
                    style: Styles.headLineStyle4,
                  ),
                ],
              )
            ]),
          ),
        ],
      ),
    );
  }
}
