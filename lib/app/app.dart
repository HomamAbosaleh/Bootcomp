import 'package:stacked/stacked_annotations.dart';


import 'package:finance_app/ui/home/home_view.dart';
import 'package:finance_app/ui/splash/splash_view.dart';

@StackedApp(routes: [
  MaterialRoute(page: SplashView, initial: true),
  MaterialRoute(page: HomeView),
])
class App {}
