import 'package:gap/gap.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import '../../../utils/app_styles.dart';
import '../../../utils/extensions.dart';
import '../../../widgets/shape_in_right.dart';

class RightSideWidget extends StatelessWidget {
  const RightSideWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: context.portrait ? context.height * 0.45 : context.height * 0.7,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Stack(
                clipBehavior: Clip.antiAlias,
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      color: const Color.fromARGB(255, 37, 167, 167),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Text(
                            cards['secondTitle']!,
                            style: Styles.headLineStyle2.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const Gap(5),
                        Expanded(
                          flex: 3,
                          child: Text(
                            cards['secondSubTitle']!,
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Positioned(
                    top: -26,
                    right: -26,
                    child: ShapeInRight(
                      color: Color(0xFF189999),
                    ),
                  ),
                ],
              ),
            ),
            const Gap(10),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21),
                  color: const Color.fromARGB(255, 223, 80, 47),
                ),
                child: Column(
                  children: [
                    Text(
                      cards['thirdTitle']!,
                      textAlign: TextAlign.center,
                      style:
                          Styles.headLineStyle2.copyWith(color: Colors.white),
                    ),
                    const Gap(15),
                    RichText(
                      text: const TextSpan(children: [
                        TextSpan(text: '😍', style: TextStyle(fontSize: 38)),
                        TextSpan(text: '🥰', style: TextStyle(fontSize: 50)),
                        TextSpan(text: '😘', style: TextStyle(fontSize: 38)),
                      ]),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
