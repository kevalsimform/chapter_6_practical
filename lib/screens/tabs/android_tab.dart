import 'package:flutter/material.dart';
import 'package:chapter_6_practical/values/app_styles.dart';
import 'package:chapter_6_practical/values/strings/app_strings.dart';

class AndroidTab extends StatelessWidget {
  const AndroidTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
            onPressed: () {
              showAlertDialog(context);
            },
            child: const Text(AppStrings.alertDialog)),
        ElevatedButton(
          onPressed: () {
            showSimpleDialog(context);
          },
          child: const Text(AppStrings.simpleDialog),
        ),
        ElevatedButton(
            onPressed: () {
              showModalSheet(context);
            },
            child: const Text(AppStrings.modalBottomSheet))
      ],
    );
  }

  void showModalSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return BottomSheet(
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          onClosing: () {
            ///TODO(keval): implement onClosing method
          },
          elevation: 10,
          backgroundColor: Colors.blueAccent,
          builder: (BuildContext context) {
            return SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      AppStrings.modalBottomSheet,
                      style: AppStyles.headingStyle.copyWith(color: Colors.white),
                    ),
                  ),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Text(
                      AppStrings.dismiss,
                      textAlign: TextAlign.center,
                      style: AppStyles.horizontalArticleSubTitleStyle.copyWith(color: Colors.white),
                    ),
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }

  void showSimpleDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            shadowColor: Colors.blue,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    AppStrings.simpleDialog,
                    style: AppStyles.headingStyle,
                  ),
                ),
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
                    AppStrings.dismiss,
                    textAlign: TextAlign.center,
                    style: AppStyles.horizontalArticleSubTitleStyle,
                  ),
                )
              ],
            ),
          );
        });
  }

  void showAlertDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                AppStrings.alertDialog,
                style: AppStyles.headingStyle,
              )),
            ),
            content: SingleChildScrollView(
              child: Column(
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
                      style: AppStyles.horizontalArticleSubTitleStyle,
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
            shadowColor: Colors.redAccent,
            elevation: 20,
            icon: const Icon(Icons.access_time_filled_outlined),
            actionsAlignment: MainAxisAlignment.spaceAround,
            contentPadding: EdgeInsets.zero,
            actions: [
              SizedBox(
                width: 100,
                child: ElevatedButton(
                  onPressed: () {
                    if(context.mounted){
                      Navigator.of(context).pop();
                    }
                  },
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.redAccent)),
                  child: const Text(AppStrings.no),
                ),
              ),
              SizedBox(
                width: 100,
                child: ElevatedButton(
                  onPressed: () {
                    if(context.mounted){
                      Navigator.of(context).pop();
                    }
                  },
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
                  child: const Text(AppStrings.yes),
                ),
              )
            ],
          );
        });
  }
}
