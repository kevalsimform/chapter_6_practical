import 'package:chapter_6_practical/values/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../values/strings/app_strings.dart';

class IosTab extends StatelessWidget {
  const IosTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            showCupertinoDialogBox(context);
          },
          child: const Text(AppStrings.cupertinoAlertDialog),
        ),
        ElevatedButton(
          onPressed: () {
            showCupertinoModalPopUpSheet(context);
          },
          child: const Text(AppStrings.cupertinoActionSheet),
        )
      ],
    );
  }

  void showCupertinoDialogBox(BuildContext context) {
    showCupertinoDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(AppStrings.cupertinoAlertDialog),
              ),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      AppStrings.cameraUrl,
                      height: 200,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    AppStrings.continueText,
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
            actions: [
              CupertinoDialogAction(
                  onPressed: () {
                    if (context.mounted) {
                      Navigator.of(context).pop();
                    }
                  },
                  isDefaultAction: false,
                  isDestructiveAction: true,
                  child: const Text(AppStrings.no)),
              CupertinoDialogAction(
                onPressed: () {
                  if (context.mounted) {
                    Navigator.of(context).pop();
                  }
                },
                isDefaultAction: true,
                child: const Text(AppStrings.yes),
              )
            ],
          );
        });
  }

  void showCupertinoModalPopUpSheet(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (context) {
        return CupertinoActionSheet(
          title: const Text(
            AppStrings.cupertinoActionSheet,
            style: AppStyles.headingStyle,
          ),
          message: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    AppStrings.cameraUrl,
                    height: 200,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  AppStrings.cupertinoMessage,
                  style: AppStyles.horizontalArticleSubTitleStyle,
                ),
              ),
            ],
          ),
          cancelButton: CupertinoDialogAction(
            onPressed: () {
              if (context.mounted) {
                Navigator.of(context).pop();
              }
            },
            isDestructiveAction: false,
            isDefaultAction: true,
            child: const Text(AppStrings.cancel),
          ),
        );
      },
    );
  }
}
