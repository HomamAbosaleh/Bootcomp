import 'package:finance_app/ui/authenticate/authenticate_view.dart';
import 'package:finance_app/ui/tutorial/tutorial_view.dart';
import 'package:stacked/stacked_annotations.dart';

import 'package:finance_app/ui/home/home_view.dart';
import 'package:finance_app/ui/splash/splash_view.dart';

@StackedApp(routes: [
  MaterialRoute(page: SplashView, initial: true),
  MaterialRoute(page: TutorialView),
  MaterialRoute(page: HomeView),
  MaterialRoute(page: AuthenicateView),
])
class App {}
