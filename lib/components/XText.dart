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
    this.maxLint = 1,
    this.textOverflow = TextOverflow.ellipsis,
  });

  final String text;
  final FontWeight fontWeight;
  final Color color;
  final int maxLint;
  final TextOverflow textOverflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLint,
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
    this.textOverflow = TextOverflow.ellipsis,
    required this.text,
    this.fontWeight = FontWeight.normal,
    this.color = Colors.black,
    this.maxLint = 1,
  });

  final String text;
  final TextOverflow textOverflow;
  final FontWeight fontWeight;
  final Color color;
  final int maxLint;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: textOverflow,
      maxLines: maxLint,
      style: TextStyle(
        fontSize: XFont.large,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
