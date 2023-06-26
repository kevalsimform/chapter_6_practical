import 'package:flutter/material.dart';
import 'package:chapter_6_practical/values/constants.dart';
import 'package:chapter_6_practical/values/app_styles.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 15,
      shadowColor: Colors.black12,
      child: Container(
        decoration: const BoxDecoration(boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: 1)]),
        child: TextField(
          cursorColor: AppConstants.cursorColor,
          style: AppStyles.textFieldTextStyle,
          decoration: AppStyles.textFieldDecoration,
          onTapOutside: (event) {
            FocusScope.of(context).unfocus();
          },
        ),
      ),
    );
  }
}
