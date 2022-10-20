import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:park_app/constant/colors.dart';
import 'package:park_app/constant/strings.dart';

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
            helloAgainText(),
            const SizedBox(
              height: 10.0,
            ),
            messageForUserText(),
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
            createAccountRowButton(),
            const SizedBox(
              height: 60,
            )
          ],
        ),
      ),
    );
  }

  Row createAccountRowButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          Strings.youDontHaveAnyAccountText,
          style: TextStyle(fontSize: 13, color: Colors.grey[700]),
        ),
        TextButton(
          onPressed: () {},
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(
              const TextStyle(fontSize: 13),
            ),
            foregroundColor: MaterialStateProperty.all(SolidColors.blueColor),
          ),
          child: const Text(Strings.createOneText),
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
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(SolidColors.backGroundColor),
          ),
          child: const Text(Strings.loginText),
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
              const TextStyle(fontSize: 13),
            ),
            foregroundColor: MaterialStateProperty.all(Colors.grey[700]),
          ),
          child: const Text(Strings.recoveryPasswordText),
        ),
      ),
    );
  }

  Padding passwordTextField() {
    return const Padding(
      padding: EdgeInsets.fromLTRB(32, 0, 32, 0),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'رمز عبور',
          hintStyle: TextStyle(fontSize: 14),
        ),
      ),
    );
  }

  Padding emailTextField() {
    return const Padding(
      padding: EdgeInsets.fromLTRB(32, 0, 32, 8),
      child: TextField(
        decoration: InputDecoration(
          hintStyle: TextStyle(fontSize: 14),
          hintText: 'ایمیل',
        ),
      ),
    );
  }

  Text messageForUserText() {
    return Text(
      Strings.textForUserFromLoginScreenText,
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
          Strings.helloAgainText,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
