import 'package:chapter_6_practical/screens/tabs/android_tab.dart';
import 'package:chapter_6_practical/screens/tabs/ios_tab.dart';
import 'package:chapter_6_practical/values/app_styles.dart';
import 'package:flutter/material.dart';
import '../values/strings/app_strings.dart';
import '../values/constants.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({Key? key}) : super(key: key);

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            AppStrings.appName,
          ),
          bottom: const PreferredSize(
              preferredSize: Size(double.infinity, AppConstants.tabBarHeight),
              child: TabBar(
                tabs: [
                  SizedBox(
                    height: AppConstants.tabBarHeight,
                    child: Center(
                      child: Text(
                        AppStrings.android,
                        style: AppStyles.headingStyle,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: AppConstants.tabBarHeight,
                    child: Center(
                      child: Text(
                        AppStrings.ios,
                        style: AppStyles.headingStyle,
                      ),
                    ),
                  ),
                ],
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Colors.grey,
              )),
        ),
        body: const TabBarView(
          children: [
            AndroidTab(),
            IosTab(),
          ],
        ),
      ),
    );
  }
}
