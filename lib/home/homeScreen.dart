import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kilo_health/components/TabItem.dart';
import 'package:kilo_health/components/XGridItem.dart';
import 'package:kilo_health/components/XSearch.dart';
import 'package:kilo_health/constants/XFont.dart';
import 'package:kilo_health/constants/XPadding.dart';
import 'package:kilo_health/constants/XShape.dart';
import 'package:kilo_health/routes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activateIndex = 0;
  final image = [
    "https://via.placeholder.com/150/FFA500/FFFFFF?text=Orange",
    "https://via.placeholder.com/150/00FFFF/FFFFFF?text=Cyan",
    "https://via.placeholder.com/150/FFC0CB/FFFFFF?text=Pink",
  ];
  int current = 0;
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
            padding: EdgeInsets.symmetric(horizontal: XPadding.medium),
            child: Column(
              children: [
                //Search
                XSearch(() {}),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: XPadding.medium,
                    ),
                    Stack(
                      children: [
                        CarouselSlider.builder(
                          itemCount: image.length,
                          itemBuilder: (context, index, realIndex) {
                            final urlImage = image[index];
                            return XImageSlider(urlImage, index);
                          },
                          options: CarouselOptions(
                            autoPlay: true,
                            viewportFraction: 1.0,
                            aspectRatio: 2 / 1,
                            enlargeCenterPage: true,
                            enlargeStrategy: CenterPageEnlargeStrategy.height,
                            onPageChanged: (index, reason) =>
                                setState(() => activateIndex = index),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: AnimatedSmoothIndicator(
                              activeIndex: activateIndex,
                              count: image.length,
                              effect: ExpandingDotsEffect(
                                dotWidth: 10,
                                dotHeight: 5,
                                activeDotColor: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: XPadding.medium,
                    ),
                    Text(
                      "All Categories",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: XFont.medium),
                    ),
                    SizedBox(
                      height: XPadding.medium,
                    ),
                    XTabBar(
                      items: items,
                      current: current,
                      onTabSelected: (index) {
                        setState(
                          () {
                            current = index;
                          },
                        );
                      },
                    ),
                    SizedBox(
                      height: XPadding.medium,
                    ),
                    XGridItem(listItems, (index) {
                      Get.toNamed(Routes.detailScreen,
                          arguments: listItems[index]);
                      print(listItems[index].title);
                    })
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget XImageSlider(String urlimage, int index) => Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(XShape.medium),
          color: Colors.amberAccent),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(XShape.medium),
        child: Image.network(
          urlimage,
          fit: BoxFit.cover,
        ),
      ),
    );
