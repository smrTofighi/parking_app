import 'package:get/get.dart';
import 'package:park_app/routes/pages.dart';
import 'package:park_app/views/pages/main/profile/about_us_page.dart';
import 'package:park_app/views/pages/main/profile/favorite_parkings_page.dart';
import 'package:park_app/views/pages/main/profile/personal_info_edit_page.dart';
import 'package:park_app/views/pages/main/profile/privacy_page.dart';
import 'package:park_app/views/pages/onboarding/onboarding_page.dart';
import 'package:park_app/views/pages/park/booking_details_park_page.dart';
import 'package:park_app/views/pages/park/result_booking_park.dart';
import 'package:park_app/views/pages/register/signin_page.dart';
import 'package:park_app/views/pages/register/signup_page.dart';
import '../bindings/binding.dart';
import '../views/pages/main/main_page.dart';
import '../views/pages/main/profile/personal_info_view_page.dart';
import '../views/pages/park/single_park/single_park_page.dart';

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
    page: () => SingleParkPage(),
  ),
  GetPage(
    name: NameRoutes.routePersonalInfoEditPage,
    page: () => PersonalInfoEditPage(),
  ),
  GetPage(
    name: NameRoutes.routePersonalInfoViewPage,
    page: () => const PersonalInfoViewPage(),
  ),
  GetPage(
    name: NameRoutes.routeBookingDetailsParkPage,
    page: () => BookingDetailsParkPage(),
  ),
  GetPage(
    name: NameRoutes.routeResultBookingParkPage,
    page: () => const ResultBookingParkPage(),
  ),
  GetPage(
    name: NameRoutes.routeAboutUsPage,
    page: () => const AboutUsPage(),
  ),
  GetPage(
    name: NameRoutes.routeFavoriteParkingsPage,
    page: () => const FavoriteParkingsPage(),
  ),
  GetPage(
    name: NameRoutes.routePrivacyPage,
    page: () => const PrivacyPage(),
  ),
];
