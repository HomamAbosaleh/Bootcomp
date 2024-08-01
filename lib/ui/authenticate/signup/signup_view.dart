import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

import 'package:finance_app/ui/authenticate/signup/signup_view_model.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  final GlobalKey<FormState> _formKey1 = GlobalKey();
  final _email = TextEditingController();
  final _name = TextEditingController();
  final _password = TextEditingController();
  final _confirmPassowrd = TextEditingController();

  bool eye1 = true;
  Icon eyeIcon1 = const Icon(Icons.remove_red_eye_outlined,
      color: Color.fromRGBO(66, 66, 66, 1));

  bool eye2 = true;
  Icon eyeIcon2 = const Icon(Icons.remove_red_eye_outlined,
      color: Color.fromRGBO(66, 66, 66, 1));

  void fix(eye, eyeIcon) {
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
                      key: _formKey1,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: _email,
                            decoration: const InputDecoration(
                              label: Text(
                                "E-Posta",
                                style: TextStyle(
                                  color: Color.fromRGBO(66, 66, 66, 1),
                                  fontFamily: 'Montserrat-Regular',
                                ),
                              ),
                              hintStyle: TextStyle(
                                color: Color.fromRGBO(66, 66, 66, 1),
                                fontFamily: 'Montserrat-Regular',
                              ),
                              hintText: "E-Posta adresinizi giriniz",
                              border: UnderlineInputBorder(),
                            ),
                          ),
                          TextFormField(
                            controller: _name,
                            decoration: const InputDecoration(
                              label: Text(
                                "Ad Soyad",
                                style: TextStyle(
                                  color: Color.fromRGBO(66, 66, 66, 1),
                                  fontFamily: 'Montserrat-Regular',
                                ),
                              ),
                              hintStyle: TextStyle(
                                color: Color.fromRGBO(66, 66, 66, 1),
                                fontFamily: 'Montserrat-Regular',
                              ),
                              hintText: "Adınızı giriniz",
                              border: UnderlineInputBorder(),
                            ),
                          ),
                          TextFormField(
                            controller: _password,
                            obscureText: eye1,
                            decoration: InputDecoration(
                              label: const Text(
                                "Şifre",
                                style: TextStyle(
                                  color: Color.fromRGBO(66, 66, 66, 1),
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
                                  eye1 = !eye1;
                                  fix(eye1, eyeIcon1);
                                },
                                icon: eyeIcon1,
                              ),
                            ),
                          ),
                          TextFormField(
                            controller: _confirmPassowrd,
                            obscureText: eye2,
                            decoration: InputDecoration(
                              label: const Text(
                                "Şifre Tekrarı",
                                style: TextStyle(
                                  color: Color.fromRGBO(66, 66, 66, 1),
                                  fontFamily: 'Montserrat-Regular',
                                ),
                              ),
                              hintStyle: const TextStyle(
                                color: Color.fromRGBO(66, 66, 66, 1),
                                fontFamily: 'Montserrat-Regular',
                              ),
                              hintText: "Şifrenizi tekrar giriniz",
                              border: const UnderlineInputBorder(),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  eye2 = !eye2;
                                  fix(eye2, eyeIcon2);
                                },
                                icon: eyeIcon2,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey1.currentState!.validate()) {
                            viewModel.register(
                              _name.text.split(' ').first,
                              _name.text.split(' ').last,
                              _email.text,
                              _password.text,
                            );
                          }
                        },
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Tamamla",
                              style: TextStyle(
                                color: Color.fromRGBO(66, 66, 66, 1),
                                fontFamily: 'Montserrat-Regular',
                              ),
                            ),
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
      ),
    );
  }
}
