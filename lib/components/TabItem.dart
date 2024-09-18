import 'package:flutter/material.dart';

class XTabItem extends StatelessWidget {
  final String title;
  final String icon;
  final Color backgroundColor;
  final Color textColor;
  final double iconSize;
  final double height;
  final double width;

  const XTabItem({
    Key? key,
    required this.title,
    required this.icon,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black,
    this.iconSize = 24.0,
    this.height = 100.0,
    this.width = 100.0,
  }) : super(key: key);

//"https://cdn-icons-png.flaticon.com/512/966/966099.png"
  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
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
      ),
    );
  }
}

List<XTabItem> items = [

  XTabItem(
    title: "Kidney",
    icon: "https://cdn-icons-png.flaticon.com/512/966/966099.png",
  ),
  XTabItem(
    title: "Heart",
    icon: "https://cdn-icons-png.flaticon.com/512/966/966099.png",
  ),
  XTabItem(
    title: "Lung",
    icon: "https://cdn-icons-png.flaticon.com/512/966/966099.png",
  ),
  XTabItem(
    title: "Heart",
    icon: "https://cdn-icons-png.flaticon.com/512/966/966099.png",
  ),
  XTabItem(
    title: "Heart",
    icon: "https://cdn-icons-png.flaticon.com/512/966/966099.png",
  ),
];

Widget XTabBar({
  required List<XTabItem> items,
  required int current,
  required Function(int) onTabSelected,
}) {
  return SizedBox(
    height: 100,
    width: double.infinity,
    child: ListView.builder(
      itemCount: items.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        bool isSelected = current == index;
        return GestureDetector(
          onTap: () {
            onTabSelected(index);
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: isSelected ? Colors.blue : Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                  items[index].icon,
                  height: 50,
                  width: 50,
                  fit: BoxFit.contain,
                ),
                Text(
                  items[index].title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: isSelected ? Colors.white : Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    ),
  );
}

