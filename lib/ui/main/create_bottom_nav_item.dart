import 'package:finance_app/ui/news/news.dart';
import 'package:finance_app/ui/pilotgpt/pilotgpt_view.dart';
import 'package:finance_app/ui/special_content/special_content_view.dart';
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
      label: "Özel İçerik",
      icon: const Icon(Icons.star),
    ),
    TabItem.PilotGPT: TabItemData(
      label: "ParaP",
      icon: const Icon(Icons.adb_outlined),
    ),
    TabItem.News: TabItemData(
      label: "Haberler",
      icon: const Icon(Icons.article),
    ),
    TabItem.SignIn: TabItemData(
      label: "Giriş Yap",
      icon: const Icon(Icons.login),
    ),
    TabItem.LogOut: TabItemData(
      label: "Çıkış Yap",
      icon: const Icon(Icons.logout),
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
enum TabItem { Home, Wallet, PilotGPT, News, SignIn, LogOut }

Widget getViewForIndex(int index) {
  switch (index) {
    case 0:
      return const HomeView();
    case 1:
      return const SpecialContent();
    case 2:
      return const PilotGPT();
    case 3:
      return const NewsView();
    default:
      return Container();
  }
}
