import 'package:finance_app/app/finance_app.dart';
import 'package:finance_app/core/di/locator.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(const FinanceApp());
}
