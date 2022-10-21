import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:park_app/constant/component.dart';
import 'package:park_app/constant/storage.dart';
import 'package:park_app/constant/strings.dart';
import 'package:park_app/views/screens/main_screen.dart';
import 'package:park_app/views/screens/register/login_screen.dart';
import 'package:park_app/views/screens/register/widgets/text_widget.dart';
import 'package:park_app/views/widgets/elevated_button_widget.dart';
import 'package:park_app/views/widgets/textfield_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
              ConstantStrings.youDoHaveAnyAccountText,
              ConstantStrings.comeInText,
              () {
                Get.to(const LoginScreen());
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

  Padding userNameTextField() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 16, 32, 24),
      child: textfield(hintText: 'نام'),
    );
  }

  Padding signupButton() {
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
              child: const Text(ConstantStrings.singupText))),
    );
  }

  Padding passwordTextField() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 16, 32, 0),
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
