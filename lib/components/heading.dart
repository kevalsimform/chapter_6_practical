import 'package:flutter/material.dart';
import 'package:chapter_6_practical/values/strings/app_strings.dart';
import 'package:chapter_6_practical/values/app_styles.dart';

class Heading extends StatelessWidget {
  final String title;
  const Heading({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            title,
            style: AppStyles.headingStyle,
          ),
        ),
        InkWell(
          onTap: () {
            //TODO(keval):implement on press logic here
          },
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              AppStrings.seeMore,
              style: AppStyles.seeMoreStyle,
            ),
          ),
        )
      ],
    );
  }
}
