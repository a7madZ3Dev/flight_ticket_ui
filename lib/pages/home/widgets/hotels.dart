import 'package:gap/gap.dart';
import 'package:flutter/material.dart';

import './hotels_view.dart';
import '../../../utils/functions.dart';
import '../../../utils/extensions.dart';
import '../../../models/hotel_model.dart';
import '../../../widgets/title_widget.dart';

class Hotels extends StatelessWidget {
  const Hotels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleWidget(
          title: 'Hotels',
          buttonLabel: 'View all',
          padding: 18.0,
          funButton: () {},
        ),
        Gap(getPadding(context) / 2),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SizedBox(
            height: context.portrait
                ? context.height * 0.42
                : context.height * 0.70,
            child: ListView.builder(
              controller: ScrollController(),
              physics: const BouncingScrollPhysics(),
              itemCount: availableHotels.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return HotelView(
                  hotelItem: availableHotels[index],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
