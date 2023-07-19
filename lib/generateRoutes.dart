import 'package:flutter/material.dart';
 import 'package:netflix_app/ErrorPage.dart';
import 'package:netflix_app/FirstNamePage.dart';
import 'package:netflix_app/GetStartedPage.dart';
 import 'package:netflix_app/MyListPage.dart';
import 'package:netflix_app/PrivacyPolicyPage.dart';
import 'package:netflix_app/SignInPage.dart';
import 'package:netflix_app/SignUpPage.dart';
import 'package:netflix_app/SlideAnimationClass.dart';
import 'package:netflix_app/TabBarWidgetPage.dart';

Route generateRoutes(RouteSettings settings) {
  if (settings.name == FirstNamePage.pageName) {
    return SlideAnimationPageRouteBuilder(
        page: const FirstNamePage(), settings: settings);
  }
  //Home Page
  else if (settings.name == GetStartedPage.pageName) {
    return SlideAnimationPageRouteBuilder(
        page: const GetStartedPage(), settings: settings);
  }
  //Privacy Policy
  else if (settings.name == PrivacyPolicyPage.pageName) {
    return SlideAnimationPageRouteBuilder(
      page: const PrivacyPolicyPage(),
      settings: settings,
    );
  }
  //Log In
  else if (settings.name == SignInPage.pageName) {
    return SlideAnimationPageRouteBuilder(
      page: const SignInPage(),
      settings: settings,
    );
  }
  //Sign Up
  else if (settings.name == SignUpPage.pageName) {
    return SlideAnimationPageRouteBuilder(
      page: const SignUpPage(),
      settings: settings,
    );
  }

  //My List
  else if (settings.name == MyListPage.pageName) {
    return SlideAnimationPageRouteBuilder(
      page: const MyListPage(),
      settings: settings,
    );
  }
  //Tab Bar Widget

  else if (settings.name == TabBarWidgetPage.pageName) {
    return SlideAnimationPageRouteBuilder(
      page: const TabBarWidgetPage(),
      settings: settings,
    );
  } else {
    return SlideAnimationPageRouteBuilder(
        page: const ErrorPage(), settings: settings);
  }
}
