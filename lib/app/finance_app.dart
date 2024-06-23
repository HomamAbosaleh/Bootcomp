import 'package:finance_app/app/app_base_view_model.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:flutter/material.dart';

import 'package:finance_app/app/app.router.dart';

import '../core/di/locator.dart';

class FinanceApp extends StatelessWidget {
  const FinanceApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(<DeviceOrientation>[
      DeviceOrientation.portraitUp,
    ]);

    return ViewModelBuilder.reactive(
      viewModelBuilder: () => locator<AppBaseViewModel>(),
      onViewModelReady: (viewModel) => viewModel.initialise(),
      builder: (context, viewModel, child) => MaterialApp(
        navigatorKey: StackedService.navigatorKey,
        onGenerateRoute: StackedRouter().onGenerateRoute,
        navigatorObservers: [StackedService.routeObserver],
        debugShowCheckedModeBanner: true,
        title: "Finance app",
      ),
    );
  }
}
