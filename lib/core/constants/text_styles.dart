import 'package:ecommerceapp/core/constants/app_colors.dart';
import 'package:flutter/painting.dart' show TextStyle;
import 'font_weights.dart';

const String appFont = 'Cairo';

abstract final class TextStyles {
  static const TextStyle heading1Bold = TextStyle(
    fontSize: 32,
    fontWeight: FontWeights.bold,
  );

  static const TextStyle heading2Bold = TextStyle(
    fontSize: 24,
    fontWeight: FontWeights.bold,
    color: primaryColor
  );

  static const TextStyle heading3Bold = TextStyle(
    fontSize: 20,
    fontWeight: FontWeights.bold,
  );
  static const TextStyle heading3Medium = TextStyle(
    fontSize: 20,
    fontWeight: FontWeights.medium,
  );

  static const TextStyle xLargeRegular = TextStyle(
    fontSize: 18,
    fontWeight: FontWeights.regular,
  );
  static const TextStyle xLargeBold = TextStyle(
    fontSize: 18,
    fontWeight: FontWeights.bold,
    color: primaryColor
  );

  static const TextStyle largeBold = TextStyle(
    fontSize: 16,
    fontWeight: FontWeights.bold,
    color: primaryColor
  );
  static const TextStyle largeMedium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeights.medium,
    color: primaryColor
  );
  static const TextStyle largeRegular = TextStyle(
    fontSize: 16,
    fontWeight: FontWeights.regular,
    color: primaryColor
  );

  static const TextStyle mediumBold = TextStyle(
    fontSize: 14,
    fontWeight: FontWeights.bold,
  );
  static const TextStyle mediumMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeights.medium,
  );
  static const TextStyle mediumRegular = TextStyle(
    fontSize: 14,
    fontWeight: FontWeights.regular,
  );

  static const TextStyle smallBold = TextStyle(
    fontSize: 12,
    fontWeight: FontWeights.bold,
  );
  static const TextStyle smallRegular = TextStyle(
    fontSize: 12,
    fontWeight: FontWeights.regular,
  );
  static const TextStyle smallMedium = TextStyle(
    fontSize: 12,
    fontWeight: FontWeights.medium,
  );

  static const TextStyle xSmallRegular = TextStyle(
    fontSize: 10,
    fontWeight: FontWeights.regular,
  );
  static const TextStyle xSmallBold = TextStyle(
    fontSize: 10,
    fontWeight: FontWeights.bold,
  );
}
