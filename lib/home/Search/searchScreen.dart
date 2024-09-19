import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kilo_health/components/TabItem.dart';
import 'package:kilo_health/components/XText.dart';
import 'package:kilo_health/constants/XFont.dart';
import 'package:kilo_health/constants/XPadding.dart';
import 'package:kilo_health/constants/XShape.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Get.height / 10,
        automaticallyImplyLeading: false,
        title: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(
            vertical: XPadding.large,
            horizontal: XPadding.large,
          ),
          padding: EdgeInsets.symmetric(horizontal: XPadding.large),
          height: Get.height / XPadding.extraLarge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 2,
                offset: Offset(0, 1),
              )
            ],
          ),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Search",
              hintStyle: TextStyle(
                fontSize: XFont.medium,
                color: Colors.grey,
              ),
              border: InputBorder.none,
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.mic,
                ),
              ),
            ),
          ),
        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              text: "TextConstants.titleTab_1",
            ),
            Tab(
              text: "TextConstants.titleTab_2",
            ),
            Tab(
              text: "TextConstants.titleTab_3",
            ),
            Tab(
              text: "TextConstants.titleTab_4",
            )
          ],
        ),
      ),
      body: Expanded(
        child: TabBarView(
          controller: _tabController,
          children: [
            _listSearch(),
            _listSearch(),
            _listSearch(),
            _listSearch(),
          ],
        ),
      ),
    );
  }
}

Widget _listSearch() {
  return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return Container(
          height: Get.height / 10,
          margin: EdgeInsets.symmetric(
            vertical: XPadding.small,
            horizontal: XPadding.medium,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: Get.width / 1.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "What are some things that every child should do as a part of their upbringing?",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: XFont.medium,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Did you come here for something in Riker-bashing? And blowing into",
                      style: TextStyle(
                        fontSize: XFont.small,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: Get.height / 10,
                width: Get.width / 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(XShape.medium),
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(
                        "https://via.placeholder.com/150/FF5733/FFFFFF?text=Diabetes"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        );
      });
}
