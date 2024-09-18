import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kilo_health/components/XText.dart';
import 'package:kilo_health/constants/XPadding.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: XPadding.extraLarge),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: Get.height / 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://www.royalphnompenhhospital.com/royalpp/storage/app/uploads/2/2021-04-07/dr_sophal_nao_korn_01.jpg"),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              XTextMedium(
                text: "Hea Lay 007",
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: Get.height / 8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _buildHeatlItem(
                      icon: "assets/icons/weight.png",
                      type: "Heart rate",
                      weight: "215bpm",
                    ),
                    Container(
                      // Horizontal Divider (Vertical Line)
                      width: 2, // Thickness of the line
                      height: Get.height / 15, // Height of the line
                      color: Colors.blueAccent, // Color of the line
                      margin: EdgeInsets.symmetric(
                          horizontal: 16), // Spacing around the line
                    ),
                    _buildHeatlItem(
                      icon: "assets/icons/weight.png",
                      type: "Heart rate",
                      weight: "215bpm",
                    ),
                    Container(
                      // Another Horizontal Divider (Vertical Line)
                      width: 2, // Thickness of the line
                      height: Get.height / 15, // Height of the line
                      color: Colors.blueAccent, // Color of the line
                      margin: EdgeInsets.symmetric(
                          horizontal: 16), // Spacing around the line
                    ),
                    _buildHeatlItem(
                      icon: "assets/icons/weight.png",
                      type: "Heart rate",
                      weight: "215bpm",
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  _buildListProfile(
                    icon: "assets/icons/weight.png",
                    type: "Heart rate",
                  ),
                  Divider(
                    thickness: 2,
                    color: const Color.fromRGBO(206, 239, 255, 1),
                  ),
                  _buildListProfile(
                    icon: "assets/icons/weight.png",
                    type: "Heart rate",
                  ),
                  Divider(
                    thickness: 2,
                    color: const Color.fromRGBO(206, 239, 255, 1),
                  ),
                  _buildListProfile(
                    icon: "assets/icons/weight.png",
                    type: "Heart rate",
                  ),
                  Divider(
                    thickness: 2,
                    color: const Color.fromRGBO(206, 239, 255, 1),
                  ),
                  _buildListProfile(
                    icon: "assets/icons/weight.png",
                    type: "Heart rate",
                  ),
                  Divider(
                    thickness: 2,
                    color: const Color.fromRGBO(206, 239, 255, 1),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildListProfile({
  required String icon,
  required String type,
}) {
  return Container(
    height: Get.height / 10,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Container(
              height: Get.height / 15,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color.fromRGBO(206, 239, 255, 1),
              ),
              child: Image.asset(icon),
            ),
            SizedBox(
              width: XPadding.extraLarge,
            ),
            XTextMedium(
              text: "Appointmnet",
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_forward_ios,
          ),
        ),
      ],
    ),
  );
}

Widget _buildHeatlItem({
  required String icon,
  required String type,
  required String weight,
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image.asset(
        icon,
      ),
      XTextSmall(
        text: type,
        fontWeight: FontWeight.bold,
        color: Colors.blueAccent,
      ),
      XTextLarge(
        text: weight,
        fontWeight: FontWeight.bold,
        color: Colors.blueAccent,
      )
    ],
  );
}
