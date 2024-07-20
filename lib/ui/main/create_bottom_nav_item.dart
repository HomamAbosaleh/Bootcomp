import 'package:flutter/material.dart';

import 'package:finance_app/ui/home/home_view.dart';

class TabItemData {
  String label;
  Widget icon;
  TabItemData({
    required this.label,
    required this.icon,
  });
  static Map<TabItem, TabItemData> tabs = {
    TabItem.Home: TabItemData(
      label: "Anasayfa",
      icon: const Icon(Icons.home),
    ),
    TabItem.Wallet: TabItemData(
      label: "Cüzdanım",
      icon: const Icon(Icons.account_balance_wallet),
    ),
    TabItem.News: TabItemData(
      label: "Haberler",
      icon: const Icon(Icons.article),
    ),
    TabItem.Profile: TabItemData(
      label: "Hesabım",
      icon: const Icon(Icons.person),
    ),
  };
}

BottomNavigationBarItem createNavItem(TabItem tabItem) {
  final currentTab = TabItemData.tabs[tabItem]!;
  return BottomNavigationBarItem(
    icon: currentTab.icon,
    label: currentTab.label,
  );
}

// ignore: constant_identifier_names
enum TabItem { Home, Wallet, News, Profile }

Widget getViewForIndex(int index) {
  switch (index) {
    case 0:
      return const HomeView();
    case 1:
      return const Text("Cüzdanım");
    case 2:
      return const Text("Haberler");
    case 3:
      return const Text("Profil");
    default:
      return Container();
  }
}