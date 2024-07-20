import 'package:finance_app/app/app_base_view_model.dart';
import 'package:flutter/material.dart';

import 'package:finance_app/core/models/topic.dart';
import 'package:finance_app/core/models/course.dart';

class HomeViewModel extends AppBaseViewModel {
  final courses = const [
    Course(
      Icons.attach_money,
      "Para",
      [
        Topic(
          "assets/paraNedir.png",
          "Para nedir?",
          "Para, mal ve hizmetlerin değişiminde kullanılan, genel olarak kabul gören bir değerdir. Tarih boyunca çeşitli şekillerde (altın, gümüş, kağıt, dijital) kullanılmıştır. Paranın üç temel fonksiyonu vardır: değişim aracı, hesap birimi ve değer saklama aracı olarak hizmet etmek.",
        ),
        Topic(
          "assets/fizikselParaNedir.png",
          "Fiziksel para nedir?",
          "Fiziksel para, günlük hayatta alışverişlerde kullanılan madeni paralar ve kağıt banknotlardır.",
        )
      ],
    ),
    Course(
      Icons.trending_up,
      "Yatırım",
      [],
    ),
    Course(
      Icons.show_chart,
      "Enflasyon",
      [],
    ),
    Course(
      Icons.family_restroom,
      "Sigorta",
      [],
    ),
    Course(
      Icons.money_off,
      "Vergi",
      [],
    ),
    Course(
      Icons.account_balance,
      "Ekonomi ve Piyasalar",
      [],
    ),
  ];


  init() {}
}