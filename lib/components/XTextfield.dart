import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget XTextField() {
  return Container(
    height: Get.height / 15,
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
    child: TextField(
      autocorrect: false,
      autofocus: false,
      keyboardType: TextInputType.text,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        hintText: "Search",
      ),
    ),
  );
}
