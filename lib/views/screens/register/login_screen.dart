import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:park_app/constant/colors.dart';
import 'package:park_app/constant/component.dart';
import 'package:park_app/constant/storage.dart';
import 'package:park_app/constant/strings.dart';
import 'package:park_app/constant/styles/text_styles.dart';
import 'package:park_app/views/screens/main_screen.dart';
import 'package:park_app/views/screens/register/signup_screen.dart';
import 'package:park_app/views/screens/register/widgets/text_widget.dart';
import 'package:park_app/views/widgets/elevated_button_widget.dart';
import 'package:park_app/views/widgets/text_button_widget.dart';
import 'package:park_app/views/widgets/textfield_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
            helloText(text: ConstantStrings.helloAgainText),
            const SizedBox(
              height: 10.0,
            ),
            messageForUserText(text: ConstantStrings.textForUserFromLoginText),
            const SizedBox(
              height: 16.0,
            ),
            emailTextField(),
            const SizedBox(
              height: 16.0,
            ),
            passwordTextField(),
            recoveryPasswordTextButton(),
            loginButton(),
            const Spacer(),
            rowTextAndButton(
              ConstantStrings.youDontHaveAnyAccountText,
              ConstantStrings.createOneText,
              () {
                Get.to(const SignupScreen());
              },
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
        child: elevatedButton(
          onPressed: () {
            Get.offAll(const MainScreen());
            GetStorage().write(StorageKey.isLogin, true);
          },
          child: const Text(ConstantStrings.loginText),
        ),
      ),
    );
  }

  Padding recoveryPasswordTextButton() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 16, 0, 16),
      child: Align(
        alignment: Alignment.centerLeft,
        child: textButton(
          onPressed: () {},
          child: const Text(ConstantStrings.recoveryPasswordText),
        ),
      ),
    );
  }

  Padding passwordTextField() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
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
