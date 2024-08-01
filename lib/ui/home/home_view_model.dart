import 'package:finance_app/app/app_base_view_model.dart';
import 'package:flutter/material.dart';

import 'package:finance_app/core/models/topic.dart';
import 'package:finance_app/core/models/course.dart';

class HomeViewModel extends AppBaseViewModel {
  final courses = const [
    Course(
      Icons.attach_money,
      "Bütçe",
      [
        Topic(
          "assets/gelir_gider_tablosu.png",
          "Gelir ve Gider Tablosu Nedir?",
          "Gelir ve gider tablosu, bir bireyin veya işletmenin belirli bir dönemde elde ettiği gelirleri ve yaptığı harcamaları gösteren bir finansal belgedir. Bu tablo, mali durumun analiz edilmesi ve bütçenin yönetilmesi açısından önemlidir. Gelirler, maaş, kira geliri veya yatırım getirisi gibi kaynaklardan elde edilen parayı içerir. Giderler ise kira, fatura, yiyecek ve eğlence gibi harcamaları kapsar.",
        ),
        Topic(
          "assets/acil_drum_fonu.png",
          "Acil Durum Fonu Nedir?",
          "Acil durum fonu, beklenmedik mali sıkıntılarla başa çıkmak için ayrılan birikimdir. Örneğin, iş kaybı, sağlık sorunları veya büyük ev tamiratları gibi durumlarda kullanılabilir. Finansal planlama uzmanları, bireylerin en az 3-6 aylık yaşam giderlerini karşılayacak bir acil durum fonu oluşturmasını önerir. Bu fon, ekonomik istikrar sağlamak ve ani finansal krizlerde borçlanmaktan kaçınmak için önemlidir.",
        )
      ],
    ),
    Course(
      Icons.account_balance,
      "Banka",
      [
        Topic(
          "assets/faiz_oran.png",
          "Faiz Oranı Nedir?",
          "Faiz oranı, bankaların veya finansal kurumların verdiği krediler veya kabul ettiği mevduatlar için uyguladığı orandır. Örneğin, bir banka mevduat hesabına para yatırdığınızda, bankadan belirli bir faiz oranında kazanç elde edersiniz. Benzer şekilde, kredi çekerken de ödeyeceğiniz faiz oranı, borcunuzun maliyetini belirler. Faiz oranları, ekonomik koşullara ve merkez bankalarının para politikalarına göre değişebilir.",
        ),
        Topic(
          "assets/banka_turleri.png",
          "Banka Hesap Türleri Nedir?",
          "Banka hesapları genellikle vadesiz, vadeli ve yatırım hesapları gibi çeşitli türlerde olabilir. Vadesiz hesaplar, günlük işlemler ve para transferleri için kullanılırken, vadeli hesaplar belirli bir süre için para yatırılarak faiz getirisi sağlar. Yatırım hesapları ise hisse senetleri, tahviller veya yatırım fonları gibi yatırım araçlarına yatırım yapmayı amaçlar.",
        )
      ],
    ),
    Course(
      Icons.credit_card,
      "Kredi",
      [
        Topic(
          "assets/kredi_Puani.png",
          "Kredi Puanı Nedir?",
          "Kredi puanı, bireylerin kredi geçmişine dayanarak oluşturulan bir sayısal değerdir. Bu puan, bankaların ve finansal kurumların bireylere kredi verirken risk değerlendirmesi yapmalarına yardımcı olur. Yüksek kredi puanı, düşük riskli bir borçlu olduğunuzu gösterirken, düşük kredi puanı borç verme riskini artırabilir. Kredi puanları, ödeme geçmişi, kredi kullanım oranı ve borç miktarı gibi faktörlere dayanır.",
        ),
        Topic(
          "assets/ipotekli_kredi.png",
          "İpotekli Kredi Nedir?",
          "İpotekli kredi, genellikle konut satın almak için kullanılan bir kredi türüdür. Bu kredide, satın alınan mülk kredi verenin teminatı olarak kullanılır. Yani, borç ödenmediği durumda, kredi veren mülkü satışa çıkararak alacaklarını tahsil edebilir. İpotekli krediler, uzun vadeli ve düşük faiz oranlı olabilir, bu da ev sahibi olmak isteyenler için cazip bir seçenek haline gelir.",
        )
      ],
    ),
    Course(
      Icons.trending_up,
      "Yatırım",
      [
        Topic(
          "assets/hisseSenediNedir.png",
          "Hisse Senedi Nedir?",
          "Hisse senedi, bir şirketin sahiplik payını temsil eden finansal bir enstrümandır. Hisse senedi satın alan bir yatırımcı, o şirketin ortaklarından biri olur ve şirketin karından pay alabilir. Hisse senetleri, borsalarda alınıp satılabilir ve yatırımcılar fiyat dalgalanmalarından kazanç elde edebilirler. Hisse senetleri, riskli yatırım araçlarıdır çünkü fiyatları piyasada dalgalanabilir.",
        ),
        Topic(
          "assets/Tahvil-Yatirimi-Nedir.png",
          "Tahvil Nedir?",
          "Tahvil, devletler veya şirketler tarafından ihraç edilen borç senetleridir. Tahvil satın alan bir yatırımcı, tahvil ihraç eden kuruma borç vermiş olur ve belirli bir süre sonunda faiz getirisi ile birlikte ana parayı geri alır. Tahviller, genellikle hisse senetlerine göre daha az riskli yatırım araçları olarak kabul edilir. Ancak getirileri de genellikle daha düşüktür.",
        )
      ],
    ),
    Course(
      Icons.show_chart,
      "Borsa",
      [
        Topic(
          "assets/borsa_endeksi.png",
          "Borsa Endeksi Nedir?",
          "Borsa endeksi, belirli bir borsada işlem gören belirli sayıda hisse senedinin performansını ölçen bir göstergedir. Örneğin, BIST 100 endeksi, Borsa İstanbul'da işlem gören 100 büyük şirketin hisse senetlerinin performansını yansıtır. Borsa endeksleri, yatırımcılar için piyasanın genel durumu hakkında bilgi sağlar ve yatırım kararları verirken referans olarak kullanılır.",
        ),
        Topic(
          "assets/araci_kurum.png",
          "Aracı Kurum Nedir?",
          "Aracı kurumlar, bireylerin ve kurumların borsada alım satım yapmalarına aracılık eden kuruluşlardır. Aracı kurumlar, müşterilerine çeşitli yatırım ürünleri sunar ve borsa işlemlerini gerçekleştirirler. Ayrıca yatırım danışmanlığı hizmeti de verebilirler. Aracı kurumlar, işlem başına komisyon alarak gelir elde ederler.",
        )
      ],
    ),
    Course(
      Icons.currency_bitcoin,
      "Kripto Varlıklar",
      [
        Topic(
          "assets/bitcoin.png",
          "Bitcoin Nedir?",
          "Bitcoin, 2009 yılında ortaya çıkan ve merkezi olmayan bir dijital para birimidir. Blockchain teknolojisi üzerine inşa edilmiş olan Bitcoin, dijital cüzdanlar aracılığıyla transfer edilebilir ve dünyanın herhangi bir yerinde ödeme aracı olarak kullanılabilir. Bitcoin, arzı sınırlı olduğu için (21 milyon adetle sınırlıdır) değerli bir yatırım aracı olarak da kabul edilir. Ancak, fiyat dalgalanmaları nedeniyle yüksek riskli bir yatırım olarak değerlendirilir.",
        ),
        Topic(
          "assets/Blockchain.png",
          "Blockchain Nedir?",
          "Blockchain, dijital bilgilerinin merkezi olmayan bir ağda güvenli ve değiştirilemez bir şekilde saklanmasını sağlayan bir teknolojidir. Her bir veri bloğu, bir önceki bloğa bağlanarak zincir oluşturur. Bu yapısı sayesinde blockchain, güvenlik ve şeffaflık sağlar. Blockchain teknolojisi, kripto paraların yanı sıra, çeşitli sektörlerde veri güvenliği ve izlenebilirlik sağlamak amacıyla kullanılmaktadır.",
        )
      ],
    ),
  ];
  String? get name => firebaseService.user?.name;
  String? get surname => firebaseService.user?.surname;


  init() {}
}
