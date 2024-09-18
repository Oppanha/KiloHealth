import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kilo_health/constants/XFont.dart';
import 'package:kilo_health/constants/XPadding.dart';

Widget XSearch(
  final VoidCallback onTap,
) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      margin: EdgeInsets.symmetric(vertical: XPadding.medium),
      padding: EdgeInsets.symmetric(horizontal: XPadding.medium),
      height: Get.height / XPadding.extraLarge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 2))
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Search",
            style: TextStyle(
              fontSize: XFont.medium,
              color: Colors.grey,
            ),
          ),
          Icon(
            Icons.search,
            color: Colors.grey,
          ),
        ],
      ),
    ),
  );
}
