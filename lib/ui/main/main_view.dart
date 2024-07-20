import 'package:finance_app/ui/main/create_bottom_nav_item.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'package:finance_app/ui/main/main_view_model.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => MainViewModel(),
      onViewModelReady: (model) => model.init(),
      builder: (context, viewModel, child) => Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          items: [
            createNavItem(TabItem.Home),
            createNavItem(TabItem.Wallet),
            createNavItem(TabItem.News),
            createNavItem(TabItem.Profile),
          ],
          onTap: (value) {
            viewModel.setTabIndex(value);
          },
          currentIndex: viewModel.currentTabIndex,
        ),
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
          child: getViewForIndex(viewModel.currentTabIndex),
        ),
      ),
    );
  }
}
