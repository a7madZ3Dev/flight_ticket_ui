import 'package:flutter/material.dart';

import '../../../utils/extensions.dart';

double getFontSize(BuildContext context) {
  if (context.portrait) {
    return context.width * 0.10;
  } else {
    return context.height * 0.08;
  }
}

double getSize(BuildContext context) {
  if (context.portrait) {
    return context.width * 0.20;
  } else {
    return context.height * 0.20;
  }
}

double getPadding(BuildContext context) {
  if (context.portrait) {
    return context.width * 0.10;
  } else {
    return context.height * 0.06;
  }
}

double getPositionWidth(BuildContext context) {
  /// 11: 6 for maxRadius circle dot widget + 5 for padding circle dot widget
  if (context.portrait) {
    return ((context.width) - (context.width * 0.8)) / 2 - 11;
  } else {
    return ((context.width) - (context.width * 0.6)) / 2 - 11;
  }
}

double getPositionHeight(BuildContext context) {
  /// padding in the top + font size for text + padding after text + toggle widget height + height for first card + padding for circle dot widget
  if (context.portrait) {
    return (getPadding(context) +
        getFontSize(context) +
        getPadding(context) +
        40 +
        context.height * (0.22 * 0.45) +
        5);
  } else {
    return (getPadding(context) +
        getFontSize(context) +
        getPadding(context) +
        40 +
        context.height * (0.70 * 0.45) +
        5);
  }
}
