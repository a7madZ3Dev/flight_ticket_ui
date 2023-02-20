import 'package:gap/gap.dart';
import 'package:flutter/material.dart';

import '../../utils/functions.dart';
import '../../utils/app_styles.dart';
import './widgets/toggle_widget.dart';
// import './widgets/center_section.dart';
import '../../widgets/ticket_view.dart';
import '../../models/flight_model.dart';
import './widgets/circle_dot_widget.dart';
import './widgets/line_dashes_widget.dart';
import './widgets/one_section_widget.dart';
import './widgets/last_section_widget.dart';

class TicketsPage extends StatelessWidget {
  final Flight? flight;
  const TicketsPage({Key? key, this.flight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              controller: ScrollController(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Gap(getPadding(context)),
                  Row(
                    children: [
                      Text(
                        'Tickets',
                        textAlign: TextAlign.start,
                        style: Styles.headLineStyle1.copyWith(
                          fontSize: getFontSize(context),
                        ),
                      ),
                    ],
                  ),
                  Gap(getPadding(context) / 2),
                  const ToggleWidget(),
                  Gap(getPadding(context) / 2),
                  TicketView(
                    flight: availableFlights[0],
                    sectionOneColor: Colors.white,
                    sectionTwoColor: Colors.white,
                    firstTextColor: Colors.black,
                    secondTextColor: Colors.grey,
                    durationNumberColor: Colors.black,
                    dashesAndLineColor: Colors.grey.shade300,
                    cornerWidgetColor: Colors.grey.shade200,
                    iconsColor: const Color(0xFF8ACCF7),
                    isRadiusFromBottom: false,
                  ),
                  OneSectionWidget(
                    lineColor: Colors.grey.shade200,
                    firstTextColor: Colors.black,
                    secondTextColor: Colors.grey,
                    showBorderTop: true,
                    information: const [
                      'Flutter DB',
                      '5221-478566',
                      'Passenger',
                      'Passport'
                    ],
                  ),
                  LineDashesWidget(dashesColor: Colors.grey.shade300),
                  const OneSectionWidget(
                    firstTextColor: Colors.black,
                    secondTextColor: Colors.grey,
                    information: [
                      '0055 444 77147',
                      'B2SG28',
                      'Number of E-ticket',
                      'Booking code'
                    ],
                  ),
                  LineDashesWidget(dashesColor: Colors.grey.shade300),
                  OneSectionWidget(
                    lineColor: Colors.grey.shade200,
                    firstTextColor: Colors.black,
                    secondTextColor: Colors.grey,
                    showBorderBottom: true,
                    showImage: true,
                    information: const [
                      ' *** 2462',
                      '\$249.99',
                      'Payment method',
                      'Price'
                    ],
                  ),
                  const LastSectionWidget(),
                  Gap(getPadding(context) / 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TicketView(
                        flight: availableFlights[0],
                        sectionOneColor: Styles.firstFlightCardColor,
                        sectionTwoColor: Styles.secondFlightCardColor,
                      ),
                    ],
                  ),
                  Gap(getPadding(context) / 2),
                ],
              ),
            ),
          ),
          Positioned(
              left: getPositionWidth(context),
              top: getPositionHeight(context),
              child: const CircleDotWidget()),
          Positioned(
              right: getPositionWidth(context),
              top: getPositionHeight(context),
              child: const CircleDotWidget()),
        ],
      ),
    );
  }
}
