import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

import 'package:finance_app/ui/tutorial/tutorial_view_model.dart';

class TutorialView extends StatelessWidget {
  const TutorialView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => TutorialViewModel(),
      onViewModelReady: (model) => model.init(),
      builder: (context, viewModel, child) => Scaffold(
        body: Container(
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
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 3,
                  child: Image.asset(
                    "assets/logo.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: viewModel.selectedTab == -1
                      ? _firstLayout()
                      : _generateLayout(
                          viewModel.tabs[viewModel.selectedTab].title,
                          viewModel.tabs[viewModel.selectedTab].image,
                          context),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(color: Color(0xAD94B9FF)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () => viewModel.changeTap("backward"),
                child: const Text(
                  "GERİ",
                  style: TextStyle(
                    color: Color(0xFF2B47FC),
                    fontSize: 22,
                    fontFamily: 'Montserrat Alternates',
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: viewModel.selectedTab == -1
                      ? const Color(0xFF2743FD)
                      : Colors.white,
                ),
              ),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: viewModel.selectedTab == 0
                      ? const Color(0xFF2743FD)
                      : Colors.white,
                ),
              ),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: viewModel.selectedTab == 1
                      ? const Color(0xFF2743FD)
                      : Colors.white,
                ),
              ),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: viewModel.selectedTab == 2
                      ? const Color(0xFF2743FD)
                      : Colors.white,
                ),
              ),
              TextButton(
                onPressed: () => viewModel.changeTap("onward"),
                child: const Text(
                  "İLERİ",
                  style: TextStyle(
                    color: Color(0xFF2B47FC),
                    fontSize: 22,
                    fontFamily: 'Montserrat Alternates',
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _firstLayout() {
  return const Column(
    children: [
      Text(
        "Hoş Geldiniz",
        style: TextStyle(
          color: Color(0xFF2B47FC),
          fontSize: 30,
          fontFamily: 'Montserrat Alternates',
          fontWeight: FontWeight.w400,
          decoration: TextDecoration.none,
        ),
      ),
      SizedBox(height: 20),
      Text(
        "ParaPilot Ekonomik okur yazarlığı arttırmak için geliştirilmekte olan bir uygulamadır",
        style: TextStyle(
          color: Color(0xFF2B47FC),
          fontSize: 19,
          fontFamily: 'Montserrat Alternates',
          fontWeight: FontWeight.w400,
          decoration: TextDecoration.none,
        ),
        textAlign: TextAlign.justify,
      ),
      SizedBox(height: 50),
      Text(
        "Gelin hep beraber burada neler neler yapabileceğimize bir bakalım",
        style: TextStyle(
          color: Color(0xFF2B47FC),
          fontSize: 19,
          fontFamily: 'Montserrat Alternates',
          fontWeight: FontWeight.w400,
          decoration: TextDecoration.none,
        ),
        textAlign: TextAlign.justify,
      )
    ],
  );
}

Widget _generateLayout(String text, String image, BuildContext context) {
  return Column(
    children: [
      Text(
        text,
        style: const TextStyle(
          color: Color(0xFF2B47FC),
          fontSize: 24,
          fontFamily: 'Montserrat Alternates',
          fontWeight: FontWeight.w400,
          decoration: TextDecoration.none,
        ),
      ),
      SizedBox(height: MediaQuery.of(context).size.height / 10),
      SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 2.5,
        child: Image.asset(
          image,
          fit: BoxFit.fill,
        ),
      )
    ],
  );
}
