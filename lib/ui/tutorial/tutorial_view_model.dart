import 'package:finance_app/app/app.router.dart';
import 'package:finance_app/app/app_base_view_model.dart';

class TutorialViewModel extends AppBaseViewModel {
  final tabs = const [
    Tab("assets/wallet.png",
        "Uygulamamızda Cüzdan hareketlerinizi kontrol edebilir"),
    Tab("assets/books.png",
        "Finansal Okuryazarlığınızı geliştirmek için eğtimlere katlabilir"),
    Tab("assets/robot.png",
        "Finans haberlerini okuyabilir veya ParaP(Yapay zeka robotumuz) ile sohbet edebilirsiniz haberlerin özetini isteyebilirsiniz."),
  ];

  int selectedTab = -1;

  changeTap(String direction) {
    if (direction == "onward") {
      if (selectedTab < 2) {
        selectedTab++;
      } else {
        navigationService.navigateToAuthenicateView();
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
