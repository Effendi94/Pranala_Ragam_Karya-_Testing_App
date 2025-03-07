import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:testing_app/app/constants/image_constant.dart';
import 'package:testing_app/app/helper/ui_helpers.dart';
import 'package:testing_app/ui/shared/custom_button.dart';

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
              height: screenHeight(context) * .4,
              child: Image.asset(
                ImageConstant.homeLogo,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              'Let`s meet our summer coffe drinks',
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Text(
              'Anim do esse officia ad dolore eu sint duis adipisicing proident amet quis. Minim ullamco reprehenderit proident do mollit commodo tempor irure consequat. Et aliquip sint aliqua esse ea incididunt proident consectetur. Ullamco culpa dolore tempor anim adipisicing tempor officia anim laboris enim.',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: CustomButton(
                text: 'Get Started',
                width: screenWidth(context) * .8,
                onPressed: viewModel.goToHomePage,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  StartupViewmodel viewModelBuilder(BuildContext context) => StartupViewmodel();
}
