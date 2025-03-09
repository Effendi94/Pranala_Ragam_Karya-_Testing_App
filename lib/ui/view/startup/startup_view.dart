import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:testing_app/app/constants/image_constant.dart';
import 'package:testing_app/app/helper/ui_helpers.dart';
import 'package:testing_app/ui/view/startup/widgets/get_started.dart';

import 'startup_viewmodel.dart';

class StartupView extends StackedView<StartupViewmodel> {
  const StartupView({super.key});

  @override
  Widget builder(
      BuildContext context, StartupViewmodel viewModel, Widget? child) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(10),
              height: screenHeight(context) * .3,
              child: Image.asset(
                ImageConstant.homeLogo,
                fit: BoxFit.cover,
              ),
            ),
            const Expanded(
              child: GetStartedWidget(),
            ),
          ],
        ),
      ),
    );
  }

  @override
  StartupViewmodel viewModelBuilder(BuildContext context) => StartupViewmodel();
}
