import 'package:chapter_6_practical/model/navigation_route_arguments.dart';
import 'package:flutter/material.dart';
import 'package:chapter_6_practical/values/app_styles.dart';
import 'package:chapter_6_practical/values/values.dart';
import 'package:chapter_6_practical/values/strings/app_strings.dart';
import 'package:chapter_6_practical/values/constants.dart';

class ArticleDetailsScreen extends StatefulWidget {
  const ArticleDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ArticleDetailsScreen> createState() => _ArticleDetailsScreenState();
}

class _ArticleDetailsScreenState extends State<ArticleDetailsScreen> {
  bool isFavorite = false;
  late int index;
  late From from;

  void getArticleIndex() {
    NavigationRouteArguments args = ModalRoute.of(context)?.settings.arguments as NavigationRouteArguments;
    index = args.index;
    from = args.from;
  }

  @override
  void didChangeDependencies() {
    getArticleIndex();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 130,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
          child: InkWell(
            onTap: () {
              if (context.mounted) {
                Navigator.of(context).pop();
              }
            },
            child: const Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(AppStrings.back, style: AppStyles.backButtonStyle),
                )
              ],
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: IconButton(
              onPressed: () {
                //TODO(keval): implement on press logic
              },
              icon: const Icon(Icons.share, size: 20),
              splashRadius: 20,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: (from == From.mainNewsCard) ? AppStrings.mainNewsCard(index) : AppStrings.horizontalNewsCard(index),
              child: Image.asset(
                AppValues.articles[index].imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: Text(
                AppValues.articles[index].title,
                overflow: TextOverflow.visible,
                style: AppStyles.articleDetailsTitleTextStyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(AppStrings.writtenBy, style: AppStyles.writtenByTextStyle),
                  ),
                  Text(
                    AppStrings.daysAgo(4),
                    style: AppStyles.daysAgoStyle.copyWith(fontSize: 14),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isFavorite = !isFavorite;
                      });
                    },
                    icon: Icon(
                      isFavorite ? Icons.star_rate_rounded : Icons.star_border_rounded,
                      color: Colors.grey.shade400,
                      size: 30,
                    ),
                    splashRadius: 15,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              child: Text(
                AppValues.articles[index].details.replaceAll('\n', '\n\n'),
                overflow: TextOverflow.visible,
                textAlign: TextAlign.justify,
                style: AppStyles.articleDetailsTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
