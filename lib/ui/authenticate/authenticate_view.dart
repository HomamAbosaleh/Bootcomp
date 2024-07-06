import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

import 'package:finance_app/ui/authenticate/authenticate_view_model.dart';

class AuthenicateView extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey();
  final email = TextEditingController();
  final password = TextEditingController();

  AuthenicateView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => AuthenicateViewModel(),
      onViewModelReady: (model) => model.init(),
      builder: (context, viewModel, child) => Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.only(bottom: 127),
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.00, -1.00),
              end: Alignment(0, 1),
              colors: [Color(0xFF94B9FF), Color(0xFFF4F1F1)],
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Column(
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
                            suffixIcon:
                                Icon(Icons.mail, color: Color(0xFF69C7D0)),
                          ),
                        ),
                        TextFormField(
                          controller: password,
                          decoration: InputDecoration(
                            label: const Text(
                              "Şifre",
                              style: TextStyle(
                                color: Color.fromRGBO(120, 120, 120, 1),
                              ),
                            ),
                            hintStyle: const TextStyle(
                              color: Color.fromRGBO(120, 120, 120, 1),
                            ),
                            hintText: "Şifrenizi giriniz",
                            border: const UnderlineInputBorder(),
                            suffixIcon: IconButton(
                                onPressed: () => {},
                                icon: const Icon(Icons.electric_bolt_rounded)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () => {},
                        child: Text("Şifrenizi mi unuttunuz?"),
                      ),
                      TextButton(
                        onPressed: () => {},
                        child: Text("Hesabınız yok mu?"),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () => {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Giriş Yap"),
                          Icon(Icons.arrow_right_alt_outlined)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () => {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Misafir Olarak Devam Et"),
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
