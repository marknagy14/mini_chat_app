import 'package:flutter/material.dart';

Widget customButton({
  Color? backgroundColor,
  required String title,
  BorderRadius? borderRadius,
  double? width,
  double? height,
  TextStyle? style,
  required VoidCallback onPressed,
}) =>
    SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(24),
              )),
          child: Text(
            title,
            style: style,
          )),
    );
