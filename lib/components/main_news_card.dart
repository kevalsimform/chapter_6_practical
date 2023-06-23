import 'package:flutter/material.dart';
import 'package:chapter_6_practical/values/app_styles.dart';
import 'package:chapter_6_practical/values/strings/app_strings.dart';
import 'package:chapter_6_practical/values/values.dart';

class MainNewsCard extends StatelessWidget {
  const MainNewsCard({super.key, required this.index, required this.length});

  final int index;
  final int length;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: index == 0 ? 12 : 8,
        right: index == length - 1 ? 12 : 2,
        bottom: 14,
      ),
      child: Card(
        elevation: 10,
        shadowColor: Colors.grey.shade100,
        child: InkWell(
          onTap: () {
            ///TODO(keval): implement onTap here
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
