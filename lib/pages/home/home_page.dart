import 'package:gap/gap.dart';
import 'package:flutter/material.dart';

import './widgets/header.dart';
import './widgets/hotels.dart';
import './widgets/search_bar.dart';
import '../../utils/functions.dart';
import './widgets/up_coming_flights.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        controller: ScrollController(),
        child: Column(
          children: [
            Gap(getPadding(context)),
            const Header(),
            Gap(getPadding(context) / 2),
            const SearchBar(),
            Gap(getPadding(context) / 2),
            const UpComingFlights(),
            Gap(getPadding(context) / 2),
            const Hotels(),
            Gap(getPadding(context) / 2),
          ],
        ),
      ),
    );
  }
}
