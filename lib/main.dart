import 'package:flutter/material.dart';
import 'package:testing_app/app/app.locator.dart';

import 'app/main_app.dart';

void main() {
  setupLocator();
  runApp(const MainApp());
}
