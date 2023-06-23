import 'package:flutter/material.dart';
import 'package:chapter_6_practical/screens/store_screen.dart';
import 'package:chapter_6_practical/values/strings/app_strings.dart';
import 'package:chapter_6_practical/values/app_styles.dart';
import 'package:chapter_6_practical/values/values.dart';
import 'package:chapter_6_practical/screens/landing_page.dart';

class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  List pages = [];

  @override
  void initState() {
    pages = [
      const LandingPage(options: AppValues.options),
      const StoreScreen(),
      const Center(child: Text(AppStrings.favorite, style: AppStyles.headingStyle)),
      const Center(child: Text(AppStrings.setting, style: AppStyles.headingStyle)),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          items: getNavigationBarItems()),
    );
  }

  List<BottomNavigationBarItem> getNavigationBarItems() {
    return AppValues.navItems
      .map(
        (e) => BottomNavigationBarItem(
          icon: SizedBox(
            height: 24,
            child: Center(
              child: Image.asset(
                e.imageUrl,
                height: e.height,
                color: selectedIndex == AppValues.navItems.indexOf(e) ? Colors.black : Colors.grey,
              ),
            ),
          ),
          label: e.label,
        ),
      )
      .toList();
  }
}
