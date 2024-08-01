import 'package:finance_app/app/app.router.dart';
import 'package:finance_app/app/app_base_view_model.dart';

import 'package:finance_app/core/models/topic.dart';


class SpecialContentViewModel extends AppBaseViewModel {
  final topics = const [
    Topic(
      "assets/likidite.png",
      "Likidite Riski Nedir?",
      "Likidite riski, finans kuruluşlarının nakit ihtiyaçlarını karşılayamaması durumudur ve iflas veya haciz gibi ciddi sorunlara yol açabilir. Bu risk, aktif ve pasif vade dengesini kuramamak, geri ödemeleri tahsil edememek ve ani büyük nakit çıkışları gibi durumlarda ortaya çıkar. Kuruluşlar likidite riskini ölçmek için cari oran, likidite oranı ve nakit oranı gibi hesaplama araçları kullanır. Bu hesaplamalar, borç ödeme gücünü ve sermaye yeterliliğini belirlemeye yardımcı olur. Likidite riskini yönetmek, finansal sürdürülebilirlik ve başarı için kritik öneme sahiptir.",
    ),
    Topic(
      "assets/bist.png",
      "BIST 100 Endeksi Nedir?",
      "BIST 100 endeksi, Borsa İstanbul'da işlem gören en yüksek piyasa değerine sahip hisseleri gösterir ve yatırımcıların borsanın genel performansını izlemelerine yardımcı olur. Endekse dâhil edilecek paylar, A ve B grubu hisseler arasından belirlenir; A grubunda en çok işlem gören hisseler, B grubunda ise fiili dolaşım miktarı daha az olanlar yer alır. BIST 100 hesaplaması, belirli bir formülle yapılır ve piyasa değeri yüksek olan hisselerin endeksi daha fazla etkilemesi sağlanır. Ayrıca, endeks hesaplamasında getiri ve fiyat endeksi olmak üzere iki farklı yöntem bulunur; getiri endeksinde temettü ödemeleri yeniden yatırılırken, fiyat endeksinde değerlendirilmez. Dolar bazında hesaplama ise Türk lirası bazındaki endeks değeri ile doların o günkü en düşük kuru üzerinden yapılır. Bu hesaplamalar, yatırımcıların piyasa koşullarını daha iyi anlamalarına yardımcı olur.",
    )
  ];

  bool isLoading = true;

  init() {
    if (firebaseService.isAnonymousUser) {
      Future.delayed(
        const Duration(seconds: 3),
        () {
          navigationService.navigateToLoginView();
        },
      );
    } else{
      isLoading = false;
      notifyListeners();
    }
  }
}
