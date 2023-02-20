import 'package:flutter/material.dart';

import '../../../utils/app_styles.dart';
import '../../../utils/extensions.dart';
import '../../../models/hotel_model.dart';

class HotelView extends StatelessWidget {
  final HotelModel hotelItem;
  const HotelView({Key? key, required this.hotelItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(21),
        color: Styles.firstFlightCardColor,
      ),
      width: context.width * 0.6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 5,
            child: Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21),
              ),
              child: Image.asset(
                hotelItem.image,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                hotelItem.name,
                style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              hotelItem.location,
              style: Styles.headLineStyle4.copyWith(color: Colors.white),
            ),
          ),
          Expanded(
            child: Text(
              '\$${hotelItem.price}/night',
              style: Styles.headLineStyle2.copyWith(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
