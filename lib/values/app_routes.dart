import 'package:chapter_6_practical/screens/screen_404.dart';
import 'package:chapter_6_practical/values/strings/app_route_strings.dart';
import 'package:flutter/material.dart';

import '../screens/article_details_screen.dart';
import '../screens/home_page.dart';

class AppRoutes {

  static Map<String, Widget Function(BuildContext)> routes = {
    AppRouteStrings.homePage: (context) => const HomePage(),
    AppRouteStrings.articleDetailScreen: (context) => const ArticleDetailsScreen(),
  };

  static get unknownRoute => (_) => MaterialPageRoute(
        builder: (context) => const Screen404(),
      );

}
