import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_storage/get_storage.dart';
import 'package:park_app/bindings/binding.dart';
import 'package:park_app/routes/routes.dart';
import 'package:park_app/views/pages/splash/splash_page.dart';
import 'core/themes/light_theme.dart';
import 'core/values/colors.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: SolidColors.primary,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: SolidColors.primary,
      systemNavigationBarIconBrightness: Brightness.dark));
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('fa', 'IR'), // Farsi, no country code
      ],
      locale: const Locale('fa', 'IR'),
      getPages: routes,
      initialBinding: RegisterBinding(),
      defaultTransition: Transition.rightToLeft,
      home: const SplashPage(),
    );
  }
}
