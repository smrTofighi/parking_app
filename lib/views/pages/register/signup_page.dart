import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:park_app/core/values/storage.dart';
import 'package:park_app/views/pages/main_page.dart';
import 'package:park_app/views/pages/register/login_page.dart';
import 'package:park_app/views/pages/register/widgets/row_text_and_button.dart';
import 'package:park_app/views/pages/register/widgets/text_widget.dart';
import 'package:park_app/views/widgets/elevated_button_widget.dart';
import 'package:park_app/views/widgets/textfield_widget.dart';

import '../../../core/values/strings.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 40.0,
            ),
            helloText(text: ConstantStrings.fristHelloText),
            const SizedBox(
              height: 10.0,
            ),
            messageForUserText(text: ConstantStrings.textForUserFromSignupText),
            userNameTextField(),
            emailTextField(),
            passwordTextField(),
            signupButton(),
            const Spacer(),
            rowTextAndButton(
              text: ConstantStrings.youDoHaveAnyAccountText,
              onPressed: () {
                Get.to(const LoginPage());
              },
              textButton: ConstantStrings.comeInText,
            ),
            const SizedBox(
              height: 60,
            )
          ],
        ),
      ),
    );
  }

  Padding userNameTextField() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 16, 32, 24),
      child: textfield(hintText: 'نام'),
    );
  }

  Padding signupButton() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 24, 32, 36),
      child: SizedBox(
        width: Get.width,
        height: 50,
        child: elevatedButton(
          onPressed: () {
            Get.offAll(const MainPage());
            GetStorage().write(StorageKey.isLogin, true);
          },
          child: const Text(ConstantStrings.singupText),
        ),
      ),
    );
  }

  Padding passwordTextField() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
      child: textfield(hintText: ConstantStrings.passwordText),
    );
  }

  Padding emailTextField() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 0, 32, 8),
      child: textfield(hintText: ConstantStrings.emailText),
    );
  }
}
