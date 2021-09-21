import 'package:flutter/material.dart';

extension ContexExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
}

extension MediaQueryExtension on BuildContext {
  double get height => mediaQuery.size.height;
  double get width => mediaQuery.size.width;

  double get heightHigh => height * 0.08;
  double get heightMedium => height * 0.04;
  double get heightLow => height * 0.02;

  double get widthLow => width * 0.03;
  double get widthMedium => width * 0.04;
  double get widthHigh => width * 0.8;
}

extension PaddingExtension on BuildContext {
  EdgeInsets get paddingLow => EdgeInsets.all(height * 0.02);
  EdgeInsets get paddingMedium => EdgeInsets.all(height * 0.05);

  EdgeInsets get cardPadding => EdgeInsets.only(
        top: height * 0.05,
        left: width * 0.05,
      );
}
