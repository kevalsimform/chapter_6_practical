import 'package:chapter_6_practical/values/app_styles.dart';
import 'package:chapter_6_practical/values/strings/app_strings.dart';
import 'package:flutter/material.dart';

class Screen404 extends StatefulWidget {
  const Screen404({Key? key}) : super(key: key);

  @override
  State<Screen404> createState() => _Screen404State();
}

class _Screen404State extends State<Screen404> with RouteAware {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.pageNotFound),
      ),
      body: const Center(
        child: Text(
          AppStrings.pageNotFound,
          style: AppStyles.articleTitleStyle,
        ),
      ),
    );
  }
}
