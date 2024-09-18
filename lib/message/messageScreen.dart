import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kilo_health/components/XText.dart';
import 'package:kilo_health/constants/XFont.dart';
import 'package:kilo_health/constants/XPadding.dart';
import 'package:kilo_health/constants/XShape.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: XPadding.medium,
        vertical: XPadding.medium,
      ),
      child: Scaffold(
        appBar: AppBar(
          leading: Container(
            margin: EdgeInsets.all(XPadding.small),
            decoration: ShapeDecoration(
              shape: CircleBorder(),
              color: Colors.blueAccent.shade100,
            ),
            child: Center(
              child: Icon(
                Icons.person,
                size: 30,
                color: Colors.blueAccent.shade700,
              ),
            ),
          ),
          actions: [
            Icon(
              Icons.notifications_sharp,
              size: 40,
              color: Colors.blueAccent.shade100,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: XPadding.medium),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Emergency consult with your recommended doctor",
                  style: TextStyle(
                    fontSize: XFont.extraLarge,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: XPadding.medium,
                ),
                SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: XlistChat(),
                ),
                SizedBox(
                  height: XPadding.medium,
                ),
                XTextLarge(
                  text: "All Messages",
                  fontWeight: FontWeight.bold,
                ),
                XListMessage()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget XListMessage() {
  return ListView.builder(
    itemCount: 20,
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    itemBuilder: (context, index) {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(XPadding.small),
        height: Get.height / 10,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            XShape.medium,
          ),
          color: Colors.grey.shade300,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(XPadding.small),
              height: Get.height / 10,
              width: Get.width / 6,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(
                      "https://www.royalphnompenhhospital.com/royalpp/storage/app/uploads/2/2021-04-07/dr_sophal_nao_korn_01.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                XTextMedium(
                  text: "Dr Rebbeka",
                  fontWeight: FontWeight.bold,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: Get.width / 2,
                      child: Text(
                        " I'm going to share the code on how to share a Container as a Circle.Here is how the final output is going to look like.",
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: XPadding.medium,
                      ),
                      height: 5,
                      width: 5,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                      ),
                    ),
                    XTextSmall(text: "Just now"),
                  ],
                )
              ],
            ),
            Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blueAccent,
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}

Widget XlistChat() {
  return ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: 10,
    shrinkWrap: true,
    itemBuilder: (context, index) {
      return Container(
        margin: EdgeInsets.all(XPadding.small),
        height: Get.height / 10,
        width: Get.width / 6,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: NetworkImage(
                  "https://www.royalphnompenhhospital.com/royalpp/storage/app/uploads/2/2021-04-07/dr_sophal_nao_korn_01.jpg"),
              fit: BoxFit.cover),
          border: Border.all(
            color: Colors.grey,
            width: 2,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 15,
              left: 50,
              child: Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blueAccent,
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
              ),
            )
          ],
        ),
      );
    },
  );
}
