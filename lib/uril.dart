import 'package:flutter/material.dart';
import 'dart:js' as js;
double getStringSize(double size, bool isTitle) {
  if (size > 1290) {
    if (isTitle)
      return 40;
    else
      return 30;
  } else if (size < 1290 && size > 920) {
    if (isTitle)
      return 25;
    else
      return 20;
  } else {
    if (isTitle)
      return 20;
    else
      return 10;
  }
}

Widget urlBtn(bool isMax) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      FlatButton(
        child: Image.asset("assets/ios-app-icon.png"),
        onPressed: () {
          js.context
              .callMethod('open', ['https://apps.apple.com/tw/app/%E8%82%A1%E5%B8%82%E8%A1%8C%E4%BA%8B%E6%9B%86/id1540283846']);
        },
      ),
      FlatButton(
        child: Image.asset("assets/android-app-icon.png"),
        onPressed: () {
          js.context
              .callMethod('open', ['https://play.google.com/store/apps/details?id=com.wis.stock_calendar']);
        },
      ),
    ],
  );
}
