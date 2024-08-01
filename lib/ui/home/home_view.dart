import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'package:finance_app/app/app.router.dart';
import 'package:finance_app/ui/home/home_view_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => HomeViewModel(),
      onViewModelReady: (model) => model.init(),
      builder: (context, viewModel, child) => SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'PARA',
                    style: TextStyle(
                      color: Color.fromRGBO(43, 71, 252, 1),
                      fontSize: 30,
                      fontFamily: "Righteous",
                    ),
                  ),
                  TextSpan(
                    text: 'PiLOT',
                    style: TextStyle(
                      color: Color.fromRGBO(3, 0, 166, 1),
                      fontSize: 30,
                      fontFamily: "Righteous",
                    ),
                  ),
                ],
              ),
            ),
            viewModel.name != null
                ? RichText(
                    text:  TextSpan(
                      children: [
                        const TextSpan(
                          text: "Hoş Geldin\t",
                          style: TextStyle(
                            color: Color.fromRGBO(43, 71, 252, 1),
                            fontSize: 16,
                            fontFamily: "Montserrat"
                          ),
                        ),
                        TextSpan(
                          text: "${viewModel.name} ${viewModel.surname}",
                          style: const TextStyle(
                            color: Color.fromRGBO(53, 53, 54, 1),
                            fontSize: 16,
                            fontFamily: "Righteous",
                          ),
                        ),
                      ],
                    ),
                  )
                : Container(),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 10.0,
              ),
              itemCount: viewModel.courses.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () =>
                      viewModel.navigationService.navigateToFinancialDictionary(
                    courseTitle: viewModel.courses[index].title,
                    topics: viewModel.courses[index].topics,
                  ),
                  child: Card(
                    margin: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          viewModel.courses[index].icon,
                          size: 80,
                          color: const Color.fromRGBO(33, 33, 33, 1),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          viewModel.courses[index].title,
                          style: const TextStyle(
                            fontSize: 16,
                            fontFamily: 'Montserrat-Regular',
                            color: Color.fromRGBO(33, 33, 33, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
