import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart' show CupertinoActivityIndicator;
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class CircularLoadingWidget extends StatelessWidget {
  const CircularLoadingWidget({
    super.key,
    this.color = primaryColor,
    this.size = 36,
    this.strokeWidth,
  });

  final Color color;
  final double size;
  final double? strokeWidth;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Platform.isAndroid
          ? SizedBox(
              height: size,
              width: size,
              child: CircularProgressIndicator(
                color: color,
                backgroundColor: Colors.white,
                strokeWidth: strokeWidth ?? size / 8,
              ),
            )
          : CupertinoActivityIndicator(radius: size / 3, color: color),
    );
  }
}
