// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:finance_app/core/models/topic.dart' as _i12;
import 'package:finance_app/ui/authenticate/forget_password/forget_password_view.dart'
    as _i7;
import 'package:finance_app/ui/authenticate/login/login_view.dart' as _i5;
import 'package:finance_app/ui/authenticate/signup/signup_view.dart' as _i6;
import 'package:finance_app/ui/financial_dictionary/financial_dictionary_view.dart'
    as _i8;
import 'package:finance_app/ui/main/main_view.dart' as _i4;
import 'package:finance_app/ui/pilotgpt/pilotgpt_view.dart' as _i9;
import 'package:finance_app/ui/splash/splash_view.dart' as _i2;
import 'package:finance_app/ui/tutorial/tutorial_view.dart' as _i3;
import 'package:flutter/material.dart' as _i11;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i13;

class Routes {
  static const splashView = '/';

  static const tutorialView = '/tutorial-view';

  static const mainView = '/main-view';

  static const loginView = '/login-view';

  static const signupView = '/signup-view';

  static const forgetPasswordView = '/forget-password-view';

  static const financialDictionary = '/financial-dictionary';

  static const pilotGPT = '/pilot-gp-t';

  static const articleView = '/article-view';

  static const all = <String>{
    splashView,
    tutorialView,
    mainView,
    loginView,
    signupView,
    forgetPasswordView,
    financialDictionary,
    pilotGPT,
    articleView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.splashView,
      page: _i2.SplashView,
    ),
    _i1.RouteDef(
      Routes.tutorialView,
      page: _i3.TutorialView,
    ),
    _i1.RouteDef(
      Routes.mainView,
      page: _i4.MainView,
    ),
    _i1.RouteDef(
      Routes.loginView,
      page: _i5.LoginView,
    ),
    _i1.RouteDef(
      Routes.signupView,
      page: _i6.SignupView,
    ),
    _i1.RouteDef(
      Routes.forgetPasswordView,
      page: _i7.ForgetPasswordView,
    ),
    _i1.RouteDef(
      Routes.financialDictionary,
      page: _i8.FinancialDictionary,
    ),
    _i1.RouteDef(
      Routes.pilotGPT,
      page: _i9.PilotGPT,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.SplashView: (data) {
      return _i11.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.SplashView(),
        settings: data,
      );
    },
    _i3.TutorialView: (data) {
      return _i11.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.TutorialView(),
        settings: data,
      );
    },
    _i4.MainView: (data) {
      return _i11.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.MainView(),
        settings: data,
      );
    },
    _i5.LoginView: (data) {
      return _i11.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.LoginView(),
        settings: data,
      );
    },
    _i6.SignupView: (data) {
      return _i11.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.SignupView(),
        settings: data,
      );
    },
    _i7.ForgetPasswordView: (data) {
      return _i11.MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.ForgetPasswordView(),
        settings: data,
      );
    },
    _i8.FinancialDictionary: (data) {
      final args = data.getArgs<FinancialDictionaryArguments>(nullOk: false);
      return _i11.MaterialPageRoute<dynamic>(
        builder: (context) => _i8.FinancialDictionary(
            key: args.key, courseTitle: args.courseTitle, topics: args.topics),
        settings: data,
      );
    },
    _i9.PilotGPT: (data) {
      final args = data.getArgs<PilotGPTArguments>(
        orElse: () => const PilotGPTArguments(),
      );
      return _i11.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i9.PilotGPT(key: args.key, initialMessage: args.initialMessage),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class FinancialDictionaryArguments {
  const FinancialDictionaryArguments({
    this.key,
    required this.courseTitle,
    required this.topics,
  });

  final _i11.Key? key;

  final String courseTitle;

  final List<_i12.Topic> topics;

  @override
  String toString() {
    return '{"key": "$key", "courseTitle": "$courseTitle", "topics": "$topics"}';
  }

  @override
  bool operator ==(covariant FinancialDictionaryArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.courseTitle == courseTitle &&
        other.topics == topics;
  }

  @override
  int get hashCode {
    return key.hashCode ^ courseTitle.hashCode ^ topics.hashCode;
  }
}

class PilotGPTArguments {
  const PilotGPTArguments({
    this.key,
    this.initialMessage,
  });

  final _i11.Key? key;

  final String? initialMessage;

  @override
  String toString() {
    return '{"key": "$key", "initialMessage": "$initialMessage"}';
  }

  @override
  bool operator ==(covariant PilotGPTArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.initialMessage == initialMessage;
  }

  @override
  int get hashCode {
    return key.hashCode ^ initialMessage.hashCode;
  }
}

class ArticleViewArguments {
  const ArticleViewArguments({
    this.key,
    required this.blogUrl,
  });

  final _i11.Key? key;

  final String blogUrl;

  @override
  String toString() {
    return '{"key": "$key", "blogUrl": "$blogUrl"}';
  }

  @override
  bool operator ==(covariant ArticleViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.blogUrl == blogUrl;
  }

  @override
  int get hashCode {
    return key.hashCode ^ blogUrl.hashCode;
  }
}

extension NavigatorStateExtension on _i13.NavigationService {
  Future<dynamic> navigateToSplashView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.splashView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToTutorialView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.tutorialView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToMainView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.mainView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSignupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.signupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToForgetPasswordView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.forgetPasswordView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToFinancialDictionary({
    _i11.Key? key,
    required String courseTitle,
    required List<_i12.Topic> topics,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.financialDictionary,
        arguments: FinancialDictionaryArguments(
            key: key, courseTitle: courseTitle, topics: topics),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPilotGPT({
    _i11.Key? key,
    String? initialMessage,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.pilotGPT,
        arguments: PilotGPTArguments(key: key, initialMessage: initialMessage),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToArticleView({
    _i11.Key? key,
    required String blogUrl,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.articleView,
        arguments: ArticleViewArguments(key: key, blogUrl: blogUrl),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSplashView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.splashView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithTutorialView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.tutorialView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithMainView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.mainView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSignupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.signupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithForgetPasswordView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.forgetPasswordView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithFinancialDictionary({
    _i11.Key? key,
    required String courseTitle,
    required List<_i12.Topic> topics,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.financialDictionary,
        arguments: FinancialDictionaryArguments(
            key: key, courseTitle: courseTitle, topics: topics),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPilotGPT({
    _i11.Key? key,
    String? initialMessage,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.pilotGPT,
        arguments: PilotGPTArguments(key: key, initialMessage: initialMessage),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithArticleView({
    _i11.Key? key,
    required String blogUrl,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.articleView,
        arguments: ArticleViewArguments(key: key, blogUrl: blogUrl),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
