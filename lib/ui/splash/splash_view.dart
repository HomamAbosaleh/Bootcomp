import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

import 'package:finance_app/ui/splash/splash_view_model.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => SplashViewModel(),
      onViewModelReady: (model) => model.init(),
      builder: (context, viewModel, child) => Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xFF94B9FF), Color(0xFFF4F1F1)],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/logo.png",
              fit: BoxFit.scaleDown,
            ),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'PARA',
                    style: TextStyle(
                      color: Color.fromRGBO(43, 71, 252, 1),
                      fontSize: 40,
                      fontFamily: "Righteous",
                    ),
                  ),
                  TextSpan(
                    text: 'PiLOT',
                    style: TextStyle(
                      color: Color.fromRGBO(3, 0, 166, 1),
                      fontSize: 40,
                      fontFamily: "Righteous",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
