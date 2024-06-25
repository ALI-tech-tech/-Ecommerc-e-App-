import 'package:flutter/material.dart' show Alignment, Color, Colors, Gradient, LinearGradient, MaterialColor;

abstract final class AppColors {
  static const Color red = Color(0xffFF0C0C);
  static const Color grey = Colors.grey;
  static  Color white = Colors.white;
}

// const MaterialColor primaryColor = MaterialColor(
//   0xff25849D,
//   <int, Color>{
//     300: Color(0xff01B1AE),
//     400: Color(0xff3F97AF),
//     500: Color(0xff25849D),
//   },
// );
Gradient? linearPrimary=LinearGradient(
  begin: Alignment.topCenter, colors: [
          Colors.orange[900]!,
          Colors.orange[800]!,
          Colors.orange[400]!,
        ]);
const MaterialColor primaryColor = MaterialColor(
  0xffFF8C00, // Orange color value
  <int, Color>{
    300: Color(0xffFFB347),
    400: Color(0xffFFA726),
    500: Color(0xffFF8C00),
  },
);