import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';

import '../../../utils/constants.dart';
import '../../../utils/app_styles.dart';
import '../../../utils/extensions.dart';

class LastSectionWidget extends StatelessWidget {
  final Color containerColor;

  const LastSectionWidget({
    Key? key,
    this.containerColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.portrait ? context.width * 0.8 : context.width * 0.6,
      padding: const EdgeInsets.all(15),
      height: context.portrait ? context.height * 0.14 : context.height * 0.35,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(21)),
      ),
      child: Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: const BorderRadius.all(Radius.circular(21)),
        ),
        child: BarcodeWidget(
          barcode: Barcode.code128(),
          data: url,
          drawText: false,
          color: Styles.textColor,
          width: double.infinity,
        ),
      ),
    );
  }
}
