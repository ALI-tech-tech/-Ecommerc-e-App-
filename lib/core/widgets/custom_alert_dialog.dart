import 'package:flutter/material.dart';

import '../constants/text_styles.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.subTitle,
    required this.buttonLabel,
    required this.onPressed,
    required this.secondButton,
  });

  final IconData icon;
  final Color iconColor;
  final String title;
  final String subTitle;
  final String buttonLabel;
  final void Function() onPressed;
  final Widget secondButton;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: iconColor, size: 50),
            const SizedBox(height: 18),
            Text(
              title,
              style: TextStyles.heading3Bold,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Text(
              subTitle,
              style: TextStyles.mediumRegular,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
           ElevatedButton(
              onPressed: onPressed,
              child: Text(buttonLabel),
            ),
            secondButton,
          ],
        ),
      ),
    );
  }
}
