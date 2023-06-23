import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'strings/app_strings.dart';

class AppStyles {
  static const TextStyle textFieldTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    fontFamily: AppStrings.roboto,
  );
  static const TextStyle textFieldHintStyle = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w300,
    fontFamily: AppStrings.roboto,
  );
  static const TextStyle headingStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w600,
    fontSize: 14,
  );
  static const TextStyle seeMoreStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w300,
    color: Colors.black,
    letterSpacing: 0.5,
  );
  static const TextStyle categoryTagStyle = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w300,
    color: Colors.black,
    letterSpacing: 0.5,
  );
  static const TextStyle daysAgoStyle = TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.w400,
    fontSize: 10,
    letterSpacing: 0.5,
  );
  static const TextStyle backButtonStyle = TextStyle(
    color: Colors.black,
    fontSize: 17,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle articleTitleStyle = TextStyle(
    fontWeight: FontWeight.w600,
    height: 1.2,
    fontFamily: AppStrings.timesNewRoman,
    fontSize: 20,
    overflow: TextOverflow.ellipsis,
    color: Colors.black,
  );
  static const TextStyle articleDetailsTitleTextStyle = TextStyle(
    fontSize: 23,
    height: 1.3,
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontFamily: AppStrings.timesNewRoman,
  );
  static TextStyle writtenByTextStyle = TextStyle(
    fontSize: 17,
    height: 1.35,
    overflow: TextOverflow.visible,
    color: Colors.grey.shade800,
    fontWeight: FontWeight.w300,
  );
  static TextStyle articleDetailsTextStyle = TextStyle(
    fontStyle: FontStyle.italic,
    fontSize: 17,
    height: 1.5,
    fontWeight: FontWeight.w400,
    color: Colors.grey.shade700,
  );
  static const TextStyle horizontalArticleInfoStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 10,
    overflow: TextOverflow.ellipsis,
    color: Colors.black,
  );
  static const TextStyle horizontalArticleSubTitleStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    height: 1.2,
    overflow: TextOverflow.ellipsis,
    color: Colors.black54,
  );
  static TextStyle horizontalArticleTitleStyle = TextStyle(
      fontWeight: FontWeight.lerp(FontWeight.w400, FontWeight.bold, 0.5),
      fontSize: 17,
      height: 1.3,
      fontFamily: AppStrings.timesNewRoman,
      overflow: TextOverflow.ellipsis,
      color: Colors.black);
  static const InputDecoration textFieldDecoration = InputDecoration(
    filled: true,
    fillColor: Colors.white,
    contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
    border: OutlineInputBorder(borderSide: BorderSide.none),
    enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
    hintText: AppStrings.search,

    prefixIcon: Icon(CupertinoIcons.search),
    prefixIconColor: Colors.grey,
    hintStyle: AppStyles.textFieldHintStyle,
  );

}
