import 'package:finance_app/app/app.router.dart';
import 'package:finance_app/app/app_base_view_model.dart';

class LoginViewModel extends AppBaseViewModel {
  
  init() {}

  void login(String email, String password) async {
    final result = await firebaseService.signIn(email, password);
    if (result) navigationService.navigateToMainView();
  }

  void loginAnonymously() async {
    final result = await firebaseService.signInAnonymously();
    if (result) navigationService.navigateToMainView();
  }
}
