import 'package:finance_app/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

import 'package:finance_app/ui/authenticate/signup/signup_view_model.dart';

class SignupView extends StatelessWidget {
  static final GlobalKey<FormState> formKey = GlobalKey();
  static final email = TextEditingController();
  static final name = TextEditingController();
  static final password = TextEditingController();
  static final confirmPassowrd = TextEditingController();

  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => SignupViewModel(),
      onViewModelReady: (model) => model.init(),
      builder: (context, viewModel, child) => Container(
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
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 20, 16, 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Image.asset(
                      "assets/logo.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: email,
                          decoration: const InputDecoration(
                            label: Text(
                              "E-Posta",
                              style: TextStyle(
                                color: Color.fromRGBO(120, 120, 120, 1),
                              ),
                            ),
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(120, 120, 120, 1),
                            ),
                            hintText: "E-Posta adresinizi giriniz",
                            border: UnderlineInputBorder(),
                          ),
                        ),
                        TextFormField(
                          controller: name,
                          decoration: const InputDecoration(
                            label: Text(
                              "Ad Soyad",
                              style: TextStyle(
                                color: Color.fromRGBO(120, 120, 120, 1),
                              ),
                            ),
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(120, 120, 120, 1),
                            ),
                            hintText: "Adınızı giriniz",
                            border: UnderlineInputBorder(),
                          ),
                        ),
                        TextFormField(
                          controller: password,
                          decoration: const InputDecoration(
                            label: Text(
                              "Şifre",
                              style: TextStyle(
                                color: Color.fromRGBO(120, 120, 120, 1),
                              ),
                            ),
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(120, 120, 120, 1),
                            ),
                            hintText: "Şifrenizi giriniz",
                            border: UnderlineInputBorder(),
                          ),
                        ),
                        TextFormField(
                          controller: confirmPassowrd,
                          decoration: const InputDecoration(
                            label: Text(
                              "Şifre Tekrarı",
                              style: TextStyle(
                                color: Color.fromRGBO(120, 120, 120, 1),
                              ),
                            ),
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(120, 120, 120, 1),
                            ),
                            hintText: "Şifrenizi tekrar giriniz",
                            border: UnderlineInputBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () =>
                          viewModel.navigationService.navigateToMainView(),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Tamamla"),
                          Icon(Icons.arrow_right_alt_outlined)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
