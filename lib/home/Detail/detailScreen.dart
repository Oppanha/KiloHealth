import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kilo_health/components/XGridItem.dart';
import 'package:kilo_health/components/XLink.dart';
import 'package:kilo_health/components/XText.dart';
import 'package:kilo_health/constants/XPadding.dart';
import 'package:kilo_health/constants/XShape.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final ListItem data = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent.shade100,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        title: XTextLarge(
          text: data.title,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: XPadding.large,
          horizontal: XPadding.large,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Box(data.image),
            XTextLarge(
              text: data.title,
              fontWeight: FontWeight.bold,
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: data.healthTips.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      XTextMedium(
                        text: "${index + 1}  ${data.healthTips[index]}",
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: XPadding.small,
                      ),
                    ],
                  );
                }),
            XTextLarge(
              text: "Article by: KiloHealth",
              fontWeight: FontWeight.w400,
            ),
            XTextLarge(
              text: "Share to Social media",
              fontWeight: FontWeight.w400,
            ),
            XLink()
          ],
        ),
      ),
    );
  }
}

Widget Box(String image) {
  return Container(
    height: Get.height / 5,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(XShape.medium),
      image: DecorationImage(
          image: CachedNetworkImageProvider(image), fit: BoxFit.fill),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 5,
          offset: const Offset(0, 2),
        ),
      ],
    ),
  );
}
