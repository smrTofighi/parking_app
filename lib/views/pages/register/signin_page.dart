import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:park_app/core/values/storage.dart';
import 'package:park_app/views/pages/register/widgets/row_text_and_button.dart';
import '../../../core/values/dimens.dart';
import '../../../core/values/strings.dart';
import '../../../routes/pages.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(24, 60, 24, 8),
          child: Column(
            children: [
              SizedBox(
                width: Dimens.width,
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    MyString.signin,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 70.0,
              ),
              const SizedBox(
                height: 12.0,
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  MyString.userEmail,
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              const TextField(),
              const SizedBox(
                height: 12.0,
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  MyString.userPassword,
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              const TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                  ),
                ),
              ),
              const SizedBox(
                height: 60.0,
              ),
              SizedBox(
                width: Dimens.width,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Get.offAllNamed(NameRoutes.routeMainPage);
                    GetStorage().write(StorageKey.isLogin, true);
                  },
                  child: const Text(
                    MyString.signin,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              const Spacer(),
              RowTextAndButton(
                  text: MyString.youDontHaveAnyAccount,
                  onPressed: () {
                    Get.toNamed(NameRoutes.routeSignupPage);
                  },
                  textButton: MyString.createOne),
              const SizedBox(
                height: 16.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}

//? Widgets
