import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:park_app/core/styles/text_styles.dart';
import 'package:park_app/core/values/storage.dart';
import 'package:park_app/views/pages/main_page.dart';
import 'package:park_app/views/pages/register/signup_page.dart';
import 'package:park_app/views/pages/register/widgets/row_text_and_button.dart';
import 'package:park_app/views/pages/register/widgets/text_widget.dart';
import '../../../core/values/strings.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
            helloText(text: MyString.helloAgainText),
            const SizedBox(
              height: 10.0,
            ),
            messageForUserText(text: MyString.textForUserFromLoginText),
            const SizedBox(
              height: 16.0,
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
            const SizedBox(
              height: 16.0,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(32, 0, 32, 0),
              child: TextField(
                style: MyTextStyle.textFieldStyle,
                decoration: InputDecoration(
                  hintText: MyString.passwordText,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 16, 0, 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(MyString.recoveryPasswordText),
                ),
              ),
            ),
            loginButton(),
            const Spacer(),
            rowTextAndButton(
              text: MyString.youDontHaveAnyAccountText,
              onPressed: () {
                Get.to(const SignupPage());
              },
              textButton: MyString.createOneText,
            ),
            const SizedBox(
              height: 60,
            )
          ],
        ),
      ),
    );
  }

  Padding loginButton() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 8, 32, 36),
      child: SizedBox(
        width: Get.width,
        height: 50,
        child: ElevatedButton(
          onPressed: () {
            Get.offAll(const MainPage());
            GetStorage().write(StorageKey.isLogin, true);
          },
          child: const Text(MyString.loginText),
        ),
      ),
    );
  }
}
