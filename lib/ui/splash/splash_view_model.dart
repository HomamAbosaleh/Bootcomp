import 'package:finance_app/app/app.router.dart';
import 'package:finance_app/app/app_base_view_model.dart';

class SplashViewModel extends AppBaseViewModel {
  init() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        navigationService.navigateToTutorialView();
      },
    );
  }
}
