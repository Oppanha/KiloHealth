import 'package:get/get.dart';
import 'package:kilo_health/dashboard/dashboard.dart';
import 'package:kilo_health/home/Detail/detailScreen.dart';
import 'package:kilo_health/home/Search/searchScreen.dart';
import 'package:kilo_health/home/homeScreen.dart';
import 'package:kilo_health/message/messageScreen.dart';
import 'package:kilo_health/notification/notificationScreen.dart';
import 'package:kilo_health/profile/profileScreen.dart';
import 'package:kilo_health/splash/SplashScreen.dart';

class Routes {
  static const String splashScreen = "/";

  static const String dashboard = "/dashboard";

  static const String homeScreen = "/homeScreen";
  static const String notificationScreen = "/notificationScreen";
  static const String messageScreen = "/messageScreen";
  static const String profileScreen = "/profileScreen";
  static const String detailScreen = "/detailScreen";
  static const String searchScreen = "/searchScreen";
}

final getPage = [
  GetPage(name: Routes.splashScreen, page: () => SplashScreen()),
  GetPage(name: Routes.dashboard, page: () => DashBoard()),
  GetPage(name: Routes.homeScreen, page: () => HomeScreen()),
  GetPage(name: Routes.messageScreen, page: () => MessageScreen()),
  GetPage(name: Routes.notificationScreen, page: () => NotificationScreen()),
  GetPage(name: Routes.profileScreen, page: () => ProfileScreen()),
  GetPage(name: Routes.detailScreen, page: () => DetailScreen()),
  GetPage(name: Routes.searchScreen, page: () => SearchScreen()),
];
