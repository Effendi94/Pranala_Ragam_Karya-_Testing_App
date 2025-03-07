import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:testing_app/ui/shared/custom_button.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewmodel> {
  const HomeView({super.key});

  @override
  Widget builder(BuildContext context, HomeViewmodel viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text('Testing App'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 80),
            Text(
              'Bilangan Prima',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(),
            ),
            const SizedBox(height: 15),
            Text(
              'Masukkan angka untuk menghasilkan bilangan prima',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(),
            ),
            const SizedBox(height: 15),
            Text(
              'Input Angka',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(),
            ),
            const SizedBox(height: 15),
            const TextField(
              decoration: InputDecoration(hintText: 'Email Address'),
            ),
            const SizedBox(height: 15),
            Align(
              alignment: Alignment.center,
              child: CustomButton(
                text: 'Generate Bilangan Prima',
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  HomeViewmodel viewModelBuilder(BuildContext context) => HomeViewmodel();
}
