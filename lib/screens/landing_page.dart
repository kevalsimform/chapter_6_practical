import 'package:chapter_6_practical/components/heading.dart';
import 'package:flutter/material.dart';
import '../components/horizontal_news_card.dart';
import '../components/main_news_card.dart';
import '../components/search_bar.dart';
import '../values/strings/app_strings.dart';
import '../values/values.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({
    super.key,
    required this.options,
  });

  final List options;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(AppStrings.appName),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: SearchField(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SizedBox(
                height: 42,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: options.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(left: 12, right: index == options.length - 1 ? 12 : 0),
                        child: OutlinedButton(
                          onPressed: () {
                            ///TODO(keval):implement on press logic here
                          },
                          style: ButtonStyle(
                            overlayColor: MaterialStateProperty.all(Colors.grey.shade200),
                            shape: MaterialStateProperty.all(
                              const RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                                side: BorderSide(width: 0, color: Colors.black26),
                              ),
                            ),
                          ),
                          child: Text(options[index], style: Theme.of(context).textTheme.labelMedium),
                        ),
                      );
                    }),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 4, vertical: 10),
              child: Heading(title: AppStrings.mainArticles),
            ),
            SizedBox(
              height: 290,
              child: ListView.builder(
                itemCount: AppValues.articles.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return MainNewsCard(
                    index: index,
                    length: AppValues.articles.length,
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
              child: Heading(title: AppStrings.unFinishedArticles),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
              child: ListView.builder(
                itemCount: AppValues.articles.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return HorizontalNewsCard(
                    index: index,
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
