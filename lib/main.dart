import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:finance_app/firebase_options.dart';
import 'package:finance_app/app/finance_app.dart';
import 'package:finance_app/core/di/locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  setupLocator();
  runApp(const FinanceApp());
}
