import 'package:flutter/material.dart';

class CustomSlideTransition extends PageRouteBuilder {
  final Widget page;
  CustomSlideTransition(this.page)
      : super(
          pageBuilder: (context, animation1, animation2) {
            return page;
          },
          transitionsBuilder: (context, animation1, animation2, child) {
            return SlideTransition(
              position: Tween(begin: const Offset(-1, 0), end: const Offset(0, 0)).animate(animation1),
              child: child,
            );
          },
        );
}
