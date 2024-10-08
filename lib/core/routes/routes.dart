
import 'package:go_router/go_router.dart';
import 'package:rubizcode_assignment/core/routes/route_path.dart';
import 'package:rubizcode_assignment/helper/extension/base_extension.dart';
import 'package:rubizcode_assignment/presentation/screens/artice/article_screen.dart';
import 'package:rubizcode_assignment/presentation/screens/home/home/home_screen.dart';
import 'package:rubizcode_assignment/presentation/screens/notifications/notifications.dart';
import 'package:rubizcode_assignment/presentation/screens/profile/profile_screen.dart';

class AppRouter {
  static final GoRouter initRoute = GoRouter(
      initialLocation: RoutePath.homeScreen.addBasePath,
      // navigatorKey: Get.key,
      debugLogDiagnostics: true,
      routes: [
        ///======================= home Route =======================
        GoRoute(
          name: RoutePath.homeScreen,
          path: RoutePath.homeScreen.addBasePath,
          builder: (context, state) => HomeScreen(),
        ),

        ///======================= article Route =======================
        GoRoute(
          name: RoutePath.articleScreen,
          path: RoutePath.articleScreen.addBasePath,
          builder: (context, state) => const ArticleScreen(),
        ),

        ///======================= notifications Route =======================
        GoRoute(
          name: RoutePath.notifications,
          path: RoutePath.notifications.addBasePath,
          builder: (context, state) => const Notifications(),
        ),

        ///======================= profile Route =======================
        GoRoute(
          name: RoutePath.profileScreen,
          path: RoutePath.profileScreen.addBasePath,
          builder: (context, state) => const ProfileScreen(),
        ),

      ]);

  static GoRouter get route => initRoute;
}
