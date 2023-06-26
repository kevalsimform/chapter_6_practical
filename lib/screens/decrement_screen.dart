import 'package:chapter_6_practical/my_app.dart';
import 'package:chapter_6_practical/values/app_styles.dart';
import 'package:chapter_6_practical/values/strings/app_strings.dart';
import 'package:flutter/material.dart';

class DecrementScreen extends StatefulWidget {
  final int counter;
  const DecrementScreen({super.key, required this.counter});

  @override
  State<DecrementScreen> createState() => _DecrementScreenState();
}

class _DecrementScreenState extends State<DecrementScreen> with RouteAware {
  late int counter;

  @override
  void didPushNext() {
    debugPrint('Decrement Screen : Did Push Next');
    super.didPushNext();
  }

  @override
  void didPopNext() {
    debugPrint('Decrement Screen : Did Pop Next');
    super.didPopNext();
  }

  @override
  void didPush() {
    debugPrint('Decrement Screen : Did Push');
    super.didPush();
  }

  @override
  void didPop() {
    debugPrint('Decrement Screen : Did Pop');
    super.didPop();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    counter = widget.counter;
    routeObserver.subscribe(this, ModalRoute.of(context)!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.decrementScreen),
      ),
      body: Center(
        child: Text(counter.toString(),
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
                  counter--;
                });
              },
              child: const Icon(Icons.remove),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: FloatingActionButton(
              heroTag: null,
              onPressed: () {
                if(context.mounted){
                  Navigator.of(context).pop(counter);
                }
              },
              child: const Icon(Icons.arrow_back_ios),
            ),
          )
        ],
      ),
    );
  }
}
