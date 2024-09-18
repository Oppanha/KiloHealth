import 'package:flutter/material.dart';
import 'package:kilo_health/constants/XPadding.dart';

Widget XLink() {
  return Container(
    height: 100,
    width: double.infinity,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            thickness: 2,
            color: Colors.blueAccent,
          ),
        ),
        SizedBox(
          width: XPadding.extraLarge,
        ),
        Image.asset("assets/icons/link.png"),
        SizedBox(
          width: XPadding.extraLarge,
        ),
        Image.asset("assets/icons/fb.png"),
        SizedBox(
          width: XPadding.extraLarge,
        ),
        Image.asset("assets/icons/telegram.png"),
        SizedBox(
          width: XPadding.extraLarge,
        ),
        Expanded(
          child: Divider(
            thickness: 2,
            color: Colors.blueAccent,
          ),
        ),
      ],
    ),
  );
}
