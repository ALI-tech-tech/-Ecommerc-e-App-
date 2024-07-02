import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../widgets/custom_alert_dialog.dart';

extension ContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;

  double get height => MediaQuery.of(this).size.height;

  double get width => MediaQuery.of(this).size.width;


  void push(Widget page) {
    Navigator.of(this).push(
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }

  void pushNamed(String routeName,{Object? arguments}) {
    Navigator.of(this).pushNamed(routeName,arguments: arguments);
  }

  void pushReplacement(Widget page) {
    Navigator.of(this).pushReplacement(
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }

  void pushReplacementNamed(String routeName) {
    Navigator.of(this).pushReplacementNamed(routeName);
  }

  void pop() => Navigator.pop(this);

  void popAll() => Navigator.of(this).popUntil((route) => route.isFirst);

  void pushAndPopAll(Widget page) {
    popAll();
    pushReplacement(page);
  }

  void showSnackBar(String message, {Color color = Colors.grey}) {
    ScaffoldMessenger.of(this).removeCurrentSnackBar();
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message,
            style: textTheme.bodyMedium!.copyWith(color: primaryColor)),
        backgroundColor: color,
      ),
    );
  }

  void unFocusScope() => FocusScope.of(this).unfocus();


  Future showAlertDialog({
    required IconData icon,
    Color iconColor = primaryColor,
    required String title,
    required String subTitle,
    required String buttonLabel,
    required void Function(BuildContext) onPressed,
    Widget secondButton = const SizedBox(),
  }) {
    return showGeneralDialog(
      context: this,
      barrierDismissible: false,
      barrierLabel: 'نافذة تنبية',
      pageBuilder: (context, animation, secondaryAnimation) => ScaleTransition(
        scale: CurvedAnimation(
          parent: animation,
          curve: Curves.easeIn,
          reverseCurve: Curves.easeIn,
        ),
        child: PopScope(
          canPop: false,
          child: Dialog(
            alignment: Alignment.center,
            insetAnimationCurve: Curves.easeInOut,
            child: CustomAlertDialog(
              icon: icon,
              iconColor: iconColor,
              title: title,
              subTitle: subTitle,
              buttonLabel: buttonLabel,
              onPressed: () => onPressed(context),
              secondButton: secondButton,
            ),
          ),
        ),
      ),
    );
  }
}
