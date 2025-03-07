import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:testing_app/app/app.router.dart';

import '../../../app/app.locator.dart';

class StartupViewmodel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void goToHomePage() {
    _navigationService.navigateTo(Routes.homeView);
  }
}
