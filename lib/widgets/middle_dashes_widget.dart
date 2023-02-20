import 'package:flutter/material.dart';

class MiddleDashesWidget extends StatelessWidget {
  final Color color;
  const MiddleDashesWidget({Key? key, this.color = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
              constraints.maxWidth ~/ 22, (index) => DashWidget(color: color)),
        );
      }),
    );
  }
}

class DashWidget extends StatelessWidget {
  final Color color;
  const DashWidget({Key? key, this.color = Colors.white}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3),
      height: 1.5,
      width: 6,
      decoration: BoxDecoration(
        color: color,
      ),
    );
  }
}
