import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../../app/helper/ui_helpers.dart';
import '../../../shared/custom_button.dart';
import '../startup_viewmodel.dart';

class GetStartedWidget extends StackedView<StartupViewmodel> {
  const GetStartedWidget({super.key});

  @override
  Widget builder(
      BuildContext context, StartupViewmodel viewModel, Widget? child) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: PageView.builder(
            controller: viewModel.pageController,
            onPageChanged: viewModel.updateIndex,
            itemCount: viewModel.contentTitle.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Text(
                    viewModel.contentTitle[index].value ?? '',
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          fontSize: 40,
                          fontWeight: FontWeight.w900,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    viewModel.contentTitle[index].desc ?? '',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ],
              );
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            viewModel.contentTitle.length,
            (index) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.symmetric(horizontal: 5),
                width: viewModel.currentIndex == index ? 20 : 10,
                height: 10,
                decoration: BoxDecoration(
                  color: viewModel.currentIndex == index
                      ? Colors.green
                      : Colors.grey,
                  borderRadius: BorderRadius.circular(5),
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: CustomButton(
            text: viewModel.currentIndex == viewModel.contentTitle.length - 1
                ? 'Get Started'
                : 'Next',
            width: screenWidth(context) * .8,
            onPressed: viewModel.goToNext,
          ),
        ),
      ],
    );
  }

  @override
  StartupViewmodel viewModelBuilder(BuildContext context) => StartupViewmodel();
}
