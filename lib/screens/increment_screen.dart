import 'package:chapter_6_practical/components/slide_transition.dart';
import 'package:chapter_6_practical/my_app.dart';
import 'package:chapter_6_practical/screens/decrement_screen.dart';
import 'package:chapter_6_practical/values/app_styles.dart';
import 'package:chapter_6_practical/values/strings/app_strings.dart';
import 'package:flutter/material.dart';

class IncrementScreen extends StatefulWidget {
  const IncrementScreen({Key? key}) : super(key: key);

  @override
  State<IncrementScreen> createState() => _IncrementScreenState();
}

class _IncrementScreenState extends State<IncrementScreen> with RouteAware {
  int counter = 0;

  @override
  void didPushNext() {
    debugPrint('Increment Screen : Did Push Next');
    super.didPushNext();
  }

  @override
  void didPopNext() {
    debugPrint('Increment Screen : Did Pop Next');
    super.didPopNext();
  }

  @override
  void didPush() {
    debugPrint('Increment Screen : Did Push');
    super.didPush();
  }

  @override
  void didPop() {
    debugPrint('Increment Screen : Did Pop');
    super.didPop();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context)!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.incrementScreen),
      ),
      body: Center(
        child: Text(
          counter.toString(),
          style: AppStyles.articleTitleStyle,
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: FloatingActionButton(
              heroTag: null,
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
              child: const Icon(Icons.add),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: FloatingActionButton(
              heroTag: null,
              onPressed: () async {
                int value = await Navigator.of(context).push(
                  CustomSlideTransition(
                    DecrementScreen(
                      counter: counter,
                    ),
                  ),
                );
                setState(() {
                  counter = value;
                });
              },
              child: const Icon(Icons.arrow_forward_ios),
            ),
          )
        ],
      ),
    );
  }
}
