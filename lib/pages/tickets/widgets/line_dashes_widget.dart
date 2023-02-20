import 'package:flutter/material.dart';

import '../../../utils/extensions.dart';
import '../../../widgets/middle_dashes_widget.dart';

class LineDashesWidget extends StatelessWidget {
  final Color dashesColor;
  final Color containerColor;
  const LineDashesWidget({
    Key? key,
    this.dashesColor = Colors.white,
    this.containerColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: containerColor,
      width: context.portrait ? context.width * 0.8 : context.width * 0.6,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: context.height * 0.01,
      child: MiddleDashesWidget(color: dashesColor),
    );
  }
}
