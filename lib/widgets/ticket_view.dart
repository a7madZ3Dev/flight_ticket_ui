import 'package:gap/gap.dart';
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
import '../utils/extensions.dart';
import './middle_dashes_widget.dart';
import '../models/flight_model.dart';

class TicketView extends StatelessWidget {
  final Flight flight;
  final double? cardMargin;
  final Color sectionOneColor;
  final Color sectionTwoColor;
  final Color iconsColor;
  final Color durationNumberColor;
  final Color firstTextColor;
  final Color secondTextColor;
  final Color dashesAndLineColor;
  final Color cornerWidgetColor;
  final bool isRadiusFromBottom;

  const TicketView({
    Key? key,
    required this.flight,
    this.cardMargin,
    required this.sectionOneColor,
    required this.sectionTwoColor,
    this.iconsColor = Colors.white,
    this.durationNumberColor = Colors.white,
    this.dashesAndLineColor = Colors.white,
    this.firstTextColor = Colors.white,
    this.secondTextColor = Colors.white,
    this.cornerWidgetColor = Colors.white,
    this.isRadiusFromBottom = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: const Radius.circular(21),
          bottom: isRadiusFromBottom
              ? const Radius.circular(21)
              : const Radius.circular(0),
        ),
      ),
      width: context.portrait ? context.width * 0.8 : context.width * 0.6,
      margin: EdgeInsets.symmetric(horizontal: cardMargin ?? 0.0),
      child: Column(
        children: [
          /// show the blue part of the card/ticket
          Container(
            color: sectionOneColor,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            height: context.portrait
                ? context.height * (0.22 * 0.45)
                : context.height * (0.70 * 0.45),
            child: Column(
              children: [
                const Spacer(),
                Expanded(
                  child: Row(
                    children: [
                      Text(
                        flight.startingPlaceCode,
                        style: Styles.headLineStyle3
                            .copyWith(color: firstTextColor),
                      ),
                      const Expanded(
                        child: SizedBox(),
                        flex: 1,
                      ),
                      CircleWidget(circleColor: iconsColor),
                      Expanded(
                        flex: 2,
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            MiddleDots(color: iconsColor),
                            Transform.rotate(
                              angle: 1.55,
                              child: Icon(
                                Icons.airplanemode_active_rounded,
                                color: iconsColor,
                                size: 21,
                              ),
                            ),
                          ],
                        ),
                      ),
                      CircleWidget(circleColor: iconsColor),
                      const Expanded(
                        child: SizedBox(),
                        flex: 1,
                      ),
                      Text(
                        flight.landingPlaceCode,
                        style: Styles.headLineStyle3
                            .copyWith(color: firstTextColor),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        flight.startingPlace,
                        style: Styles.headLineStyle4.copyWith(
                          color: secondTextColor,
                        ),
                      ),
                      Text(
                        flight.flightDuration,
                        style: Styles.headLineStyle4.copyWith(
                          color: durationNumberColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        flight.landingPlace,
                        style: Styles.headLineStyle4.copyWith(
                          color: secondTextColor,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),

          /// show the red part of the card/ticket
          Container(
            color: sectionTwoColor,
            height: context.portrait
                ? context.height * (0.22 * 0.55)
                : context.height * (0.70 * 0.55),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CornerWidget(
                      directionIsLeft: true,
                      color: cornerWidgetColor,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: MiddleDashesWidget(color: dashesAndLineColor),
                      ),
                    ),
                    CornerWidget(
                      directionIsLeft: false,
                      color: cornerWidgetColor,
                    ),
                  ],
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            flight.departureDate,
                            textAlign: TextAlign.center,
                            style: Styles.headLineStyle3
                                .copyWith(color: firstTextColor),
                          ),
                          Gap(context.portrait ? 13 : 25),
                          Text(
                            'Date',
                            textAlign: TextAlign.center,
                            style: Styles.headLineStyle4
                                .copyWith(color: secondTextColor),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            flight.departureHour,
                            textAlign: TextAlign.center,
                            style: Styles.headLineStyle3
                                .copyWith(color: firstTextColor),
                          ),
                          Gap(context.portrait ? 13 : 25),
                          Text(
                            'Departure Time',
                            textAlign: TextAlign.center,
                            style: Styles.headLineStyle4
                                .copyWith(color: secondTextColor),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '${flight.landingDay}',
                            textAlign: TextAlign.center,
                            style: Styles.headLineStyle3
                                .copyWith(color: firstTextColor),
                          ),
                          Gap(context.portrait ? 13 : 25),
                          Text(
                            'Number',
                            textAlign: TextAlign.center,
                            style: Styles.headLineStyle4
                                .copyWith(color: secondTextColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CircleWidget extends StatelessWidget {
  final Color circleColor;
  const CircleWidget({Key? key, this.circleColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        border: Border.all(width: 2.5, color: circleColor),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}

class MiddleDots extends StatelessWidget {
  final Color color;
  const MiddleDots({Key? key, this.color = Colors.white}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ((context, constraints) {
      return Flex(
        direction: Axis.horizontal,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
            constraints.maxWidth ~/ 11, (index) => DotWidget(color: color)),
      );
    }));
  }
}

class DotWidget extends StatelessWidget {
  final Color color;
  const DotWidget({Key? key, this.color = Colors.white}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3),
      height: 3,
      width: 3,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }
}

class CornerWidget extends StatelessWidget {
  final bool directionIsLeft;
  final Color color;
  const CornerWidget({
    Key? key,
    required this.directionIsLeft,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 12,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          topLeft: directionIsLeft
              ? const Radius.circular(0)
              : const Radius.circular(25),
          bottomLeft: directionIsLeft
              ? const Radius.circular(0)
              : const Radius.circular(25),
          topRight: directionIsLeft
              ? const Radius.circular(25)
              : const Radius.circular(0),
          bottomRight: directionIsLeft
              ? const Radius.circular(25)
              : const Radius.circular(0),
        ),
      ),
    );
  }
}
