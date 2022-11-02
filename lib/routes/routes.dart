import 'package:get/get.dart';
import 'package:park_app/routes/pages.dart';
import 'package:park_app/views/pages/main/profile/personal_info_page.dart';
import 'package:park_app/views/pages/onboarding/onboarding_page.dart';
import 'package:park_app/views/pages/register/signin_page.dart';
import 'package:park_app/views/pages/register/signup_page.dart';
import 'package:park_app/views/pages/single_park_page.dart';
import '../bindings/binding.dart';
import '../views/pages/main/main_page.dart';

List<GetPage> routes = [
  GetPage(
      name: NameRoutes.routeMainPage,
      page: () => MainPage(),
      binding: RegisterBinding()),
  GetPage(
    name: NameRoutes.routeSigninPage,
    page: () => const SigninPage(),
  ),
  GetPage(
    name: NameRoutes.routeSignupPage,
    page: () => const SignupPage(),
  ),
  GetPage(
    name: NameRoutes.routeOnboardingPage,
    page: () => const OnBoardingPage(),
  ),
  GetPage(
    name: NameRoutes.routeSingleParkPage,
    page: () => const SingleParkPage(),
  ),
  GetPage(
    name: NameRoutes.routePersonalInfoPage,
    page: () => const PersonalInfoPage(),
  ),
];
