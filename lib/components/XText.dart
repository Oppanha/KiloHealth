import 'package:flutter/material.dart';
import 'package:kilo_health/constants/XFont.dart';

class XTextSmall extends StatelessWidget {
  XTextSmall({
    super.key,
    required this.text,
    this.fontWeight = FontWeight.normal,
    this.color = Colors.black,
  });

  final String text;
  final FontWeight fontWeight;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: XFont.small,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}

class XTextMedium extends StatelessWidget {
  XTextMedium({
    super.key,
    required this.text,
    this.fontWeight = FontWeight.normal,
    this.color = Colors.black,
  });

  final String text;
  final FontWeight fontWeight;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: XFont.medium,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}

class XTextLarge extends StatelessWidget {
  XTextLarge({
    super.key,
    required this.text,
    this.fontWeight = FontWeight.normal,
    this.color = Colors.black,
  });

  final String text;
  final FontWeight fontWeight;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: XFont.large,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
