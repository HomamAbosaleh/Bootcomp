import 'package:finance_app/app/app.router.dart';
import 'package:finance_app/app/app_base_view_model.dart';

class TutorialViewModel extends AppBaseViewModel {
  final tabs = const [
    Tab("assets/dictionary.png",
        "Size yabancı gelen terimleri kolayca öğrenin ve finansal bilginizi genişletin."),
    Tab("assets/news.png",
        "Ekonomi ve iş dünyasındaki en son haberleri takip ederek güncel kalıp, haftalık olarak yayınlanacak özel içeriklerimizden yararlanarak finansal ufkunuzu genişletin."),
    Tab("assets/finansbot.png",
        "Finans hakkında konuşmak ve sorularınıza yanıt bulmak için Parap’ı kullanın."),
  ];

  int selectedTab = -1;

  changeTap(String direction) {
    if (direction == "onward") {
      if (selectedTab < 2) {
        selectedTab++;
      } else {
        navigationService.navigateToLoginView();
      }
    } else {
      if (selectedTab > -1) {
        selectedTab--;
      }
    }
    notifyListeners();
  }

  init() {}
}

class Tab {
  final String image;
  final String title;

  const Tab(
    this.image,
    this.title,
  );
}
