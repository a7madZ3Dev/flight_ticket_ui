import 'package:gap/gap.dart';
import 'package:flutter/material.dart';

import '../../../utils/functions.dart';
import '../../../utils/app_styles.dart';
import '../../../utils/extensions.dart';
import '../../../models/flight_model.dart';
import '../../../widgets/ticket_view.dart';
import '../../../widgets/title_widget.dart';

class UpComingFlights extends StatelessWidget {
  const UpComingFlights({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleWidget(
          title: 'UpComing Flights',
          buttonLabel: 'View all',
          padding: 18.0,
          funButton: () {},
        ),
        Gap(getPadding(context) / 2),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SizedBox(
            height: context.portrait
                ? context.height * 0.22
                : context.height * 0.70,
            child: ListView.builder(
              controller: ScrollController(),
              physics: const BouncingScrollPhysics(),
              itemCount: availableFlights.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return TicketView(
                  cardMargin: 10.0,
                  flight: availableFlights[index],
                  sectionOneColor: Styles.firstFlightCardColor,
                  sectionTwoColor: Styles.secondFlightCardColor,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
