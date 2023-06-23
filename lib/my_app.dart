import 'package:chapter_6_practical/values/app_routes.dart';
import 'package:chapter_6_practical/values/strings/app_route_strings.dart';
import 'package:chapter_6_practical/values/strings/app_strings.dart';
import 'package:chapter_6_practical/values/theme.dart';
import 'package:flutter/material.dart';

RouteObserver routeObserver = RouteObserver();
GlobalKey<NavigatorState> navigatorKey = GlobalKey();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appTitleName,
      debugShowCheckedModeBanner: false,
      theme: themeData,
      navigatorKey: navigatorKey,
      initialRoute: AppRouteStrings.homePage,
      routes: AppRoutes.routes,
      onUnknownRoute:AppRoutes.unknownRoute,
      navigatorObservers: [routeObserver],
    );
  }
}