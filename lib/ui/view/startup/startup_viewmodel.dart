import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../app/app.router.dart';
import '../../../app/constants/common.dart';
import '../../../app/models/static.dart';

class StartupViewmodel extends IndexTrackingViewModel {
  final _navigationService = locator<NavigationService>();
  final PageController pageController = PageController();

  final List<StaticModel> contentTitle = Common.listStarted;

  void goToNext() {
    if (currentIndex < contentTitle.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      _navigationService.navigateTo(Routes.homeView);
    }
  }

  void updateIndex(index) {
    setIndex(index);
  }
}
