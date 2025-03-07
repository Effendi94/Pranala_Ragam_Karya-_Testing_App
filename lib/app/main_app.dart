import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app.router.dart';
import 'theme/app_theme_data.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Testing App",
      theme: defaultTheme(context),
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}
