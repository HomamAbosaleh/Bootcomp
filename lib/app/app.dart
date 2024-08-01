import 'package:finance_app/ui/authenticate/forget_password/forget_password_view.dart';
import 'package:finance_app/ui/authenticate/login/login_view.dart';
import 'package:finance_app/ui/authenticate/signup/signup_view.dart';
import 'package:finance_app/ui/financial_dictionary/financial_dictionary_view.dart';
import 'package:finance_app/ui/pilotgpt/pilotgpt_view.dart';
import 'package:finance_app/ui/tutorial/tutorial_view.dart';
import 'package:stacked/stacked_annotations.dart';

import 'package:finance_app/ui/main/main_view.dart';
import 'package:finance_app/ui/splash/splash_view.dart';

@StackedApp(routes: [
  MaterialRoute(page: SplashView, initial: true),
  MaterialRoute(page: TutorialView),
  MaterialRoute(page: MainView),
  MaterialRoute(page: LoginView),
  MaterialRoute(page: SignupView),
  MaterialRoute(page: ForgetPasswordView),
  MaterialRoute(page: FinancialDictionary),
  MaterialRoute(page: PilotGPT)
])
class App {}
