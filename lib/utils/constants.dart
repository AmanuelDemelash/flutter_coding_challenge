import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Constants {
  // color
  static const String app_name = "Flutter test app";
  static const Color primcolor = Color.fromARGB(255, 0, 0, 0);

  // loading widget
  static Widget spinkit = SpinKitFadingCircle(
    size: 25,
    itemBuilder: (BuildContext context, int index) {
      return DecoratedBox(
        decoration: BoxDecoration(
          color: index.isEven ? Colors.white : Colors.green,
        ),
      );
    },
  );
}
