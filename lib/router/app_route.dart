import 'package:auto_route/annotations.dart';

import 'package:fpb/home/view/home_screen.dart';
import 'package:fpb/latest_activities/view/latest_activities_screen.dart';
import 'package:fpb/onboarding/view/onboarding_screens.dart';
import 'package:fpb/onboarding/view/splash_screen.dart';
import 'package:fpb/profile/view/profile_page.dart';
import 'package:fpb/sign_in/view/sign_in_page.dart';
import 'package:fpb/sign_up/view/signup_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashScreen, initial: true),
    AutoRoute(page: SignInScreen),
    AutoRoute(page: SignUpScreen),
    AutoRoute(
      name: 'HomeRouter',
      page: HomeScreen,
      children: [
        AutoRoute(
          path: 'profile',
          page: ProfileScreen,
        ),
        AutoRoute(
          path: 'latestActivities',
          page: LatestActivitiesPage,
        ),
      ],
    ),
    AutoRoute(page: OnboardingScreen),
  ],
)
class $AppRoute {}
