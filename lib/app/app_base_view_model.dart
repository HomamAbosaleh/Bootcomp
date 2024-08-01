import 'package:finance_app/core/services/firebase_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'dart:convert';

import 'package:finance_app/core/di/locator.dart';

class AppBaseViewModel extends BaseViewModel {
  final NavigationService navigationService = locator<NavigationService>();
  final FirebaseService firebaseService = locator<FirebaseService>();
  // final config = jsonDecode(locator<String>());

  initialise() {}
}
