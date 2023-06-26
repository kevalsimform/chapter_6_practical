import 'package:chapter_6_practical/model/navigation_route_arguments.dart';
import 'package:flutter/material.dart';
import 'package:chapter_6_practical/values/app_styles.dart';
import 'package:chapter_6_practical/values/strings/app_route_strings.dart';
import 'package:chapter_6_practical/values/values.dart';
import 'package:chapter_6_practical/values/strings/app_strings.dart';
import 'package:chapter_6_practical/values/constants.dart';


class HorizontalNewsCard extends StatelessWidget {
  final int index;
  const HorizontalNewsCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
          AppRouteStrings.articleDetailScreen,
          arguments: NavigationRouteArguments(index, From.horizontalNewsCard),
        );
      },
      overlayColor: MaterialStateProperty.all(Colors.grey.shade200),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Hero(
                  tag: AppStrings.horizontalNewsCard(index),
                  child: SizedBox(
                      height: 100,
                      child: Image.asset(
                        AppValues.articles[index].imageUrl,
                        fit: BoxFit.cover,
                      )),
                ),
              ),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(AppValues.articles[index].title, maxLines: 2, style: AppStyles.horizontalArticleTitleStyle),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Text(
                          AppStrings.daysAgo(DateTime.now().difference(AppValues.articles[index].time).inDays),
                          maxLines: 2,
                          style: AppStyles.horizontalArticleInfoStyle,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2),
                        child: Text(AppValues.articles[index].details, maxLines: 2, style: AppStyles.horizontalArticleSubTitleStyle),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
