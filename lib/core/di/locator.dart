import 'package:get_it/get_it.dart';
import 'package:stacked_services/stacked_services.dart';

import 'package:finance_app/app/app_base_view_model.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => AppBaseViewModel());
  locator.registerLazySingleton(() => NavigationService());
}
