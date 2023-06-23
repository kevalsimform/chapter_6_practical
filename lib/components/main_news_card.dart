import 'package:chapter_6_practical/model/navigation_route_arguments.dart';
import 'package:flutter/material.dart';
import 'package:chapter_6_practical/screens/article_details_screen.dart';
import 'package:chapter_6_practical/values/app_styles.dart';
import 'package:chapter_6_practical/values/constants.dart';
import 'package:chapter_6_practical/my_app.dart';
import 'package:chapter_6_practical/values/strings/app_strings.dart';
import 'package:chapter_6_practical/values/values.dart';

class MainNewsCard extends StatelessWidget {
  const MainNewsCard({super.key, required this.index, required this.length});

  final int index;
  final int length;

  EdgeInsets getNewsCardPadding(){
    return EdgeInsets.only(
      left: (index == 0) ? 12 : 8,
      right: (index == length - 1) ? 12 : 2,
      bottom: 14,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getNewsCardPadding(),
      child: Card(
        elevation: 10,
        shadowColor: Colors.grey.shade100,
        child: InkWell(
          onTap: () {
            navigatorKey.currentState?.push(
              MaterialPageRoute(
                builder: (context) => const ArticleDetailsScreen(),
                settings: RouteSettings(
                    arguments: NavigationRouteArguments(index, From.mainNewsCard)),
              ),
            );
          },
          overlayColor: MaterialStateProperty.all(Colors.grey.shade200),
          child: SizedBox(
            width: 240,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 140,
                  width: 240,
                  child: Hero(
                    tag: AppStrings.mainNewsCard(index),
                    child: Image.asset(AppValues.articles[index].imageUrl,fit: BoxFit.cover,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppValues.articles[index].tag,
                        style: AppStyles.categoryTagStyle,
                      ),
                      Text(AppStrings.daysAgo(DateTime.now().difference(AppValues.articles[index].time).inDays), style: AppStyles.daysAgoStyle),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    AppValues.articles[index].title,
                    maxLines: 3,
                    style: AppStyles.articleTitleStyle,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
