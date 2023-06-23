import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:chapter_6_practical/my_app.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}
