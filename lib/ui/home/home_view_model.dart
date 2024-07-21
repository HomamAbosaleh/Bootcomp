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
      [
        Topic(
          "assets/hisseSenediNedir.png",
          "Hisse Senedi nedir?",
          "Hisse senetleri, bir şirketin sermayesinin eşit paylara bölünmüş hallerini temsil eden menkul kıymetlerdir. Bu senetler, sahiplerine şirkette ortaklık hakkı ve genellikle kar payı (temettü) alma hakkı tanır.",
        ),
        Topic(
          "assets/Tahvil-Yatirimi-Nedir.png",
          "Tahvil Nedir?",
          "Tahviller, devletler, belediyeler veya şirketler tarafından ihraç edilen ve belirli bir vade sonunda",
        )
      ],
    ),
    Course(
      Icons.show_chart,
      "Enflasyon",
      [
        Topic(
          "assets/enflasyon.png",
          "Enflasyon Nedir?",
          "Genel fiyat seviyelerinin sürekli olarak artması ve paranın satın alma gücünün düşmesi durumu.",
        ),
        Topic(
          "assets/deflasyon.png",
          "Deflasyon Nedir?",
          "Genel fiyat seviyelerinin sürekli olarak düşmesi durumu, enflasyonun tersidir ve genellikle ekonomik durgunlukla ilişkilidir. ",
        )
      ],
    ),
    Course(
      Icons.family_restroom,
      "Sigorta",
      [
        Topic(
          "assets/hayatSigortası.png",
          "Hayat Sigortası Nedir?",
          "Hayat sigortası, sigortalının vefatı durumunda, belirlenen lehtarlara (genellikle aile üyeleri) mali güvence sağlayan bir sigorta türüdür. Sigortalı, poliçe süresince prim ödemeleri yapar ve vefatı halinde, lehtarlar sigorta poliçesinde belirtilen tutarı alır. Bu sigorta türü, ailelerin ve sevdiklerinin mali olarak korunmasını amaçlar.",
        ),
        Topic(
          "assets/aracKonutSigortası.png",
          "Araç Konut Sigortası Nedir?",
          "Konut sigortası, bir evin ve içindeki eşyaların yangın, hırsızlık, doğal afetler gibi risklere karşı",
        )
      ],
    ),
    Course(
      Icons.money_off,
      "Vergi",
      [
        Topic(
          "assets/gelirVergisi.png",
          "Gelir Vergisi Nedir?",
          "Gelir vergisi, bireylerin ve kurumların elde ettikleri gelir üzerinden devlet tarafından alınan bir vergidir. Gelir kaynakları arasında maaş, ücret, kira geliri, yatırım kazançları ve iş gelirleri yer alır. Bu vergi, genellikle artan oranlıdır, yani gelir arttıkça vergi oranı da artar.",
        ),
        Topic(
          "assets/KDV.png",
          "KDV Nedir?",
          "Katma Değer Vergisi (KDV), mal ve hizmetlerin üretiminden nihai tüketime kadar olan süreçte, her ",
        )
      ],
    ),
    Course(
      Icons.account_balance,
      "Ekonomi ve Piyasalar",
      [
        Topic(
          "assets/GSYH.png",
          "GSYH Nedir?",
          "GSYH, belirli bir dönem içinde, bir ülke sınırları içinde üretilen tüm mal ve hizmetlerin toplam değerini ifade eder. Ekonomik büyüme ve yaşam standardı gibi göstergeleri değerlendirmek için kullanılan en önemli ekonomik ölçütlerden biridir. GSYH, nominal ve reel olarak hesaplanabilir; reel GSYH enflasyon etkisini arındırır.",
        ),
        Topic(
          "assets/dovizKurları.png",
          "Döviz Kurları Nedir?",
          "Döviz kurları, bir ülkenin para biriminin başka bir ülkenin para birimine karşı değerini ifade eder. ",
        )
      ],
    ),
  ];

  init() {}
}
