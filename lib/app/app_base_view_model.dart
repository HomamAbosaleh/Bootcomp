import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'package:finance_app/core/di/locator.dart'
;
class AppBaseViewModel extends BaseViewModel {
  final NavigationService navigationService = locator<NavigationService>();

  initialise() {}
}
