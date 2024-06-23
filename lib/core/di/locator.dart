import 'package:finance_app/app/app_base_view_model.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => AppBaseViewModel());
}
