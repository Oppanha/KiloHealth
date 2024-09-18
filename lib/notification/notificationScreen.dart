import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kilo_health/components/XText.dart';
import 'package:kilo_health/constants/XPadding.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        title: XTextLarge(
          text: "Notification",
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: XPadding.extraLarge),
            child: GestureDetector(
              onTap: () {},
              child: XTextLarge(
                text: "Clear all",
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: XPadding.large),
            margin: EdgeInsets.only(bottom: 1),
            color: Colors.white,
            height: Get.height / 7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      height: Get.height / 15,
                    ),
                    SizedBox(
                      width: XPadding.medium,
                    ),
                    SizedBox(
                      width: Get.width / 1.3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          XTextMedium(
                            text:
                                "Peer learning works. By building robust personal learning communities both ",
                          ),
                          XTextMedium(
                            text: "Aug 12, 2020 at 12:08 PM",
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
