import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_storage/get_storage.dart';
import 'package:park_app/bindings/binding.dart';
import 'package:park_app/views/screens/login_screen.dart';
import 'package:park_app/views/screens/main_screen.dart';
import 'package:park_app/views/screens/splash_screen.dart';

void main() async {
  runApp(const MyApp());
  await GetStorage.init();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Samim',
        inputDecorationTheme: const InputDecorationTheme(
          fillColor: Colors.white,
          hintStyle: TextStyle(fontSize: 14),
          contentPadding:
              EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0, right: 14),
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
        ),
      ),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('fa', 'IR'), // Farsi, no country code
      ],
      locale: const Locale('fa', 'IR'),
      initialBinding: RegisterBinding(),
      defaultTransition: Transition.rightToLeft,
      home: const LoginScreen(),
    );
  }
}
