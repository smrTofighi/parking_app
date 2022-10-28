import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:park_app/core/values/storage.dart';
import 'package:park_app/views/pages/main_page.dart';
import 'package:park_app/views/pages/register/login_page.dart';
import 'package:park_app/views/pages/register/widgets/row_text_and_button.dart';
import 'package:park_app/views/pages/register/widgets/text_widget.dart';

import '../../../core/styles/text_styles.dart';
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
            helloText(text: MyString.fristHelloText),
            const SizedBox(
              height: 10.0,
            ),
            messageForUserText(text: MyString.textForUserFromSignupText),
            const Padding(
              padding: EdgeInsets.fromLTRB(32, 16, 32, 24),
              child: TextField(
                style: MyTextStyle.textFieldStyle,
                decoration: InputDecoration(
                  hintText: 'نام',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(32, 0, 32, 8),
              child: TextField(
                style: MyTextStyle.textFieldStyle,
                decoration: InputDecoration(
                  hintText: MyString.emailText,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
              child: TextField(
                style: MyTextStyle.textFieldStyle,
                decoration: InputDecoration(
                  hintText: MyString.passwordText,
                ),
              ),
            ),
            signupButton(),
            const Spacer(),
            rowTextAndButton(
              text: MyString.youDoHaveAnyAccountText,
              onPressed: () {
                Get.to(const LoginPage());
              },
              textButton: MyString.comeInText,
            ),
            const SizedBox(
              height: 60,
            )
          ],
        ),
      ),
    );
  }

  Padding signupButton() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 24, 32, 36),
      child: SizedBox(
          width: Get.width,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              Get.offAll(const MainPage());
              GetStorage().write(StorageKey.isLogin, true);
            },
            child: const Text(MyString.singupText),
          )),
    );
  }
}
