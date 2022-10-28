import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:park_app/core/styles/text_styles.dart';
import 'package:park_app/core/values/storage.dart';
import 'package:park_app/views/pages/main_page.dart';
import 'package:park_app/views/pages/register/signup_page.dart';
import 'package:park_app/views/pages/register/widgets/big_text.dart';
import 'package:park_app/views/pages/register/widgets/row_text_and_button.dart';
import 'package:park_app/views/pages/register/widgets/medium_text.dart';
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
            const BigText(text: MyString.helloAgain),
            const SizedBox(
              height: 10.0,
            ),
            const MediumText(text: MyString.textForUserFromLogin),
            const SizedBox(
              height: 16.0,
            ),
            const TextFieldEmail(),
            const SizedBox(
              height: 16.0,
            ),
            const TextFieldPassword(),
            const TextButtonRecovery(),
            const LoginButton(),
            const Spacer(),
            RowTextAndButton(
              text: MyString.youDontHaveAnyAccount,
              onPressed: () {
                Get.to(const SignupPage());
              },
              textButton: MyString.createOne,
            ),
            const SizedBox(
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}

//? Widgets

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
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
          child: const Text(MyString.login),
        ),
      ),
    );
  }
}

class TextButtonRecovery extends StatelessWidget {
  const TextButtonRecovery({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 16, 0, 16),
      child: Align(
        alignment: Alignment.centerLeft,
        child: TextButton(
          onPressed: () {},
          child: const Text(MyString.recoveryPassword),
        ),
      ),
    );
  }
}

class TextFieldPassword extends StatelessWidget {
  const TextFieldPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(32, 0, 32, 0),
      child: TextField(
        style: MyTextStyle.textFieldStyle,
        decoration: InputDecoration(
          hintText: MyString.userPassword,
        ),
      ),
    );
  }
}

class TextFieldEmail extends StatelessWidget {
  const TextFieldEmail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(32, 0, 32, 8),
      child: TextField(
        style: MyTextStyle.textFieldStyle,
        decoration: InputDecoration(
          hintText: MyString.userEmail,
        ),
      ),
    );
  }
}
