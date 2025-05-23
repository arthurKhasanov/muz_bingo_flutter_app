import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/widgets.dart';

abstract class AppFlushbar {
  static void show(BuildContext context, {required String message, String? title}) async {
    await Flushbar(
      title: title ?? 'Oops...',
      message: message,
      duration: Duration(seconds: 3),
      flushbarStyle: FlushbarStyle.FLOATING,
      flushbarPosition: FlushbarPosition.TOP,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      margin: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16 + (MediaQuery.of(context).padding.top),
      ),
      borderRadius: BorderRadius.circular(16),
      forwardAnimationCurve: Curves.easeInOut,
      reverseAnimationCurve: Curves.easeInOut,
    ).show(context);
  }
}
