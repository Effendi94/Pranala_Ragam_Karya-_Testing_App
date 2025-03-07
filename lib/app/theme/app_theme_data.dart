import 'package:flutter/material.dart';

import 'text_theme_data.dart';

ThemeData defaultTheme(BuildContext context) {
  return ThemeData(
    textTheme: AppTextTheme.getTextTheme(),
  );
}
