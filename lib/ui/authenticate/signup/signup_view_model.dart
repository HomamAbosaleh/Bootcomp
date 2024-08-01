import 'package:finance_app/app/app.router.dart';
import 'package:finance_app/app/app_base_view_model.dart';

class SignupViewModel extends AppBaseViewModel {
  
  init() {}

  void register(
      String name, String surname, String email, String password) async {
    final result = await firebaseService.signUp(name, surname, email, password);
    if (result) navigationService.navigateToLoginView();
  }
}
