import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:rubizcode_assignment/presentation/screens/artice/article_screen.dart';
import 'package:rubizcode_assignment/presentation/screens/categories/categories_screen.dart';
import 'package:rubizcode_assignment/presentation/screens/home/home/home_screen.dart';
import 'package:rubizcode_assignment/presentation/screens/notifications/notifications.dart';
import 'package:rubizcode_assignment/presentation/screens/profile/profile_screen.dart';
import 'package:rubizcode_assignment/presentation/widgets/error_screen/error_screen.dart';


class AppRoute {
  //========================Initial Screens======================
  static const String homeScreen = "/home_screen";
  static const String categoriesScreen = "/categories_screen";
  static const String notifications = "/notifications";
  static const String errorScreen = "/error_screen";
  static const String articleCScreen = "/article_screen";
  static const String profileScreen = "/profile_screen";

  static List<GetPage> routes = [
    //========================Initial Screens======================
    GetPage(name: homeScreen, page: () => HomeScreen()),
    GetPage(name: categoriesScreen, page: () => CategoriesScreen()),
    GetPage(name: notifications, page: () => Notifications()),
    GetPage(name: errorScreen, page: () => ErrorPage()),
    GetPage(name: articleCScreen, page: () => ArticleScreen()),
    GetPage(name: profileScreen, page: () => ProfileScreen()),
  ];
}
