import 'package:gap/gap.dart';
import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../../utils/functions.dart';
import '../../utils/app_styles.dart';
import './widgets/offers_widget.dart';
import './widgets/toggle_widget.dart';
import '../../widgets/title_widget.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/drop_down_widget.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: SingleChildScrollView(
        controller: ScrollController(),
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(getPadding(context)),
            Text(
              'What are\nyou looking for?',
              style: Styles.headLineStyle1
                  .copyWith(fontSize: getFontSize(context)),
            ),
            Gap(getPadding(context) / 2),
            const ToggleWidget(),
            Gap(getPadding(context) / 2),
            DropDownWidget(
              dropDownHeight: 50,
              dropFillColor: Colors.white,
              hintText: 'Departure',
              prefixIconSize: 22,
              prefixIcon: Icons.flight_takeoff_rounded,
              prefixIconColor: const Color(0XFFBFC2DF),
              valueItems: countryItems,
            ),
            Gap(getPadding(context) / 2),
            DropDownWidget(
              dropDownHeight: 50,
              dropFillColor: Colors.white,
              hintText: 'Arrival',
              prefixIconSize: 22,
              prefixIcon: Icons.flight_land_rounded,
              prefixIconColor: const Color(0XFFBFC2DF),
              valueItems: countryItems,
            ),
            Gap(getPadding(context) / 2),
            MyButton(
              buttonLabel: 'Find Tickets',
              height: 50,
              myFunction: () {},
              buttonColor: const Color(0xD91130CE),
            ),
            Gap(getPadding(context) / 2),
            TitleWidget(
              title: 'UpComing Flights',
              buttonLabel: 'View all',
              padding: 0.0,
              funButton: () {},
            ),
            Gap(getPadding(context) / 2),
            const OffersWidget(),
            Gap(getPadding(context) / 2),
          ],
        ),
      ),
    ));
  }
}
