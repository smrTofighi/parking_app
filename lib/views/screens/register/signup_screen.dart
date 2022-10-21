import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:park_app/constant/colors.dart';
import 'package:park_app/constant/storage.dart';
import 'package:park_app/constant/strings.dart';
import 'package:park_app/views/screens/main_screen.dart';
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
            helloAgainText(),
            const SizedBox(
              height: 10.0,
            ),
            messageForUserText(),
            userNameTextField(),
            emailTextField(),
            passwordTextField(),
            recoveryPasswordTextButton(),
            loginButton(),
            const Spacer(),
            createAccountRowButton(),
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

  Row createAccountRowButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          ConstantStrings.youDontHaveAnyAccountText,
          style: TextStyle(fontSize: 13, color: Colors.grey[700]),
        ),
        TextButton(
          onPressed: () {},
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(
              const TextStyle(fontSize: 14),
            ),
            foregroundColor: MaterialStateProperty.all(SolidColors.blueColor),
          ),
          child: const Text(ConstantStrings.createOneText),
        )
      ],
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
            Get.offAll(const MainScreen());
            GetStorage().write(StorageKey.isLogin, true);
          },
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(SolidColors.backGroundColor),
          ),
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
        child: TextButton(
          onPressed: () {},
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(
              const TextStyle(fontSize: 14),
            ),
            foregroundColor: MaterialStateProperty.all(Colors.grey[700]),
          ),
          child: const Text(ConstantStrings.recoveryPasswordText),
        ),
      ),
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

  Text messageForUserText() {
    return Text(
      ConstantStrings.textForUserFromLoginScreenText,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 18,
        color: Colors.grey[700],
      ),
    );
  }

  SizedBox helloAgainText() {
    return SizedBox(
      width: Get.width,
      child: const Align(
        alignment: Alignment.center,
        child: Text(
          ConstantStrings.helloAgainText,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
