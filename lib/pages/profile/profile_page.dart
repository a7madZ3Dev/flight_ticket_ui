import 'package:gap/gap.dart';
import 'package:flutter/material.dart';

import './widgets/header.dart';
import '../../utils/functions.dart';
import '../../utils/app_styles.dart';
import './widgets/one_row_widget.dart';
import './widgets/notification_widget.dart';
import '../../widgets/middle_dashes_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          controller: ScrollController(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(getPadding(context)),
              const Header(),
              Gap(getPadding(context) / 4),
              Divider(color: Colors.grey.shade400),
              Gap(getPadding(context) / 4),
              const NotificationWidget(),
              Gap(getPadding(context) / 2),
              Text(
                'Accumulated miles',
                style: Styles.headLineStyle2.copyWith(color: Colors.black),
              ),
              Gap(getPadding(context)),
              Center(
                child: Text(
                  '192802',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getFontSize(context),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Gap(getPadding(context)),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Miles accrued',
                        style: Styles.headLineStyle4
                            .copyWith(fontSize: 16, color: primary),
                      ),
                      Text(
                        '23 May 2023',
                        style: Styles.headLineStyle4
                            .copyWith(fontSize: 16, color: primary),
                      )
                    ],
                  ),
                  Gap(getPadding(context) / 4),
                  Divider(color: Colors.grey.shade400),
                  Gap(getPadding(context) / 4),
                  const OneRowWidget(
                    info: ['23042', 'Miles', 'Airline CO', 'Received from'],
                    firstColor: Colors.black,
                    secondColor: Colors.grey,
                  ),
                  Gap(getPadding(context) / 4),
                  MiddleDashesWidget(color: Colors.grey.shade300),
                  Gap(getPadding(context) / 4),
                  const OneRowWidget(
                    info: ['24', 'Miles', 'McDonal\'s', 'Received from'],
                    firstColor: Colors.black,
                    secondColor: Colors.grey,
                  ),
                  Gap(getPadding(context) / 4),
                  MiddleDashesWidget(color: Colors.grey.shade300),
                  Gap(getPadding(context) / 4),
                  const OneRowWidget(
                    info: ['52340', 'Miles', 'Microsoft', 'Received from'],
                    firstColor: Colors.black,
                    secondColor: Colors.grey,
                  ),
                  Gap(getPadding(context)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'How to get more miles',
                        style: Styles.headLineStyle3
                            .copyWith(color: Styles.firstFlightCardColor),
                      )
                    ],
                  ),
                  Gap(getPadding(context) / 2),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
