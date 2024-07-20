import 'package:finance_app/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

import 'package:finance_app/ui/authenticate/forget_password/forget_password_view_model.dart';

class ForgetPasswordView extends StatelessWidget {
  static final GlobalKey<FormState> formKey = GlobalKey();
  static final email = TextEditingController();
  static final password = TextEditingController();

  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => ForgetPasswordViewModel(),
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
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Image.asset(
                      "assets/logo.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(
                    height: 200,
                  ),
                  Form(
                    key: formKey,
                    child: TextFormField(
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
                        suffixIcon: Icon(Icons.mail, color: Color(0xFF69C7D0)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () => {},
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Sıfırla"),
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
