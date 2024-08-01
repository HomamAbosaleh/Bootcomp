import 'package:finance_app/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

import 'package:finance_app/ui/authenticate/login/login_view_model.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final _email = TextEditingController();
  final _password = TextEditingController();
  bool eye = true;
  Icon eyeIcon = const Icon(Icons.remove_red_eye_outlined,
      color: Color.fromRGBO(66, 66, 66, 1));

  void fix() {
    if (eye == true) {
      setState(() {
        eyeIcon = const Icon(
          Icons.remove_red_eye_outlined,
          color: Color.fromRGBO(66, 66, 66, 1),
        );
      });
    } else {
      setState(() {
        eyeIcon = const Icon(
          Icons.remove_red_eye_sharp,
          color: Color.fromRGBO(66, 66, 66, 1),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => LoginViewModel(),
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
          body: SingleChildScrollView(
            child: SafeArea(
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
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: _email,
                            decoration: const InputDecoration(
                              label: Text(
                                "E-Posta",
                                style: TextStyle(
                                  color: Color.fromRGBO(33, 33, 33, 1),
                                  fontFamily: 'Montserrat-Regular',
                                ),
                              ),
                              hintStyle: TextStyle(
                                color: Color.fromRGBO(66, 66, 66, 1),
                                fontFamily: 'Montserrat-Regular',
                              ),
                              hintText: "E-Posta adresinizi giriniz",
                              border: UnderlineInputBorder(),
                              suffixIcon: Icon(Icons.mail,
                                  color: Color.fromRGBO(66, 66, 66, 1)),
                            ),
                          ),
                          TextFormField(
                            controller: _password,
                            obscureText: eye,
                            decoration: InputDecoration(
                              label: const Text(
                                "Şifre",
                                style: TextStyle(
                                  color: Color.fromRGBO(33, 33, 33, 1),
                                  fontFamily: 'Montserrat-Regular',
                                ),
                              ),
                              hintStyle: const TextStyle(
                                color: Color.fromRGBO(66, 66, 66, 1),
                                fontFamily: 'Montserrat-Regular',
                              ),
                              hintText: "Şifrenizi giriniz",
                              border: const UnderlineInputBorder(),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  eye = !eye;
                                  fix();
                                },
                                icon: eyeIcon,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () => viewModel.navigationService
                                    .navigateToForgetPasswordView(),
                                child: const Text(
                                  "Şifrenizi mi unuttunuz?",
                                  style: TextStyle(
                                    color: Color.fromRGBO(66, 66, 66, 1),
                                    fontFamily: 'Montserrat-Regular',
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () => viewModel.navigationService
                                    .navigateToSignupView(),
                                child: const Text(
                                  "Hesabınız yok mu?",
                                  style: TextStyle(
                                    color: Color.fromRGBO(66, 66, 66, 1),
                                    fontFamily: 'Montserrat-Regular',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(const Color.fromRGBO(245,245,245, 1)) 
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                viewModel.login(
                                  _email.text,
                                  _password.text,
                                );
                              }
                            },
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Giriş Yap",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Montserrat-Regular',
                                    color: Color.fromRGBO(66, 66, 66, 1),
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_right_alt_outlined,
                                  color: Color.fromRGBO(66, 66, 66, 1),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child:  ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(const Color.fromRGBO(245,245,245, 1)) 
                            ),
                            onPressed: () => viewModel.loginAnonymously(),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Misafir Olarak Devam Et",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Montserrat-Regular',
                                    color: Color.fromRGBO(66, 66, 66, 1),
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_right_alt_outlined,
                                  color: Color.fromRGBO(66, 66, 66, 1),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
