import 'package:flutter/material.dart';

class SlideAnimationPageRouteBuilder extends PageRouteBuilder {
  SlideAnimationPageRouteBuilder({required this.page, RouteSettings? settings})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          settings: settings,
          transitionDuration: const Duration(milliseconds: 600),
          reverseTransitionDuration: const Duration(milliseconds: 600),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              SlideTransition(
            position: animation.drive(
              Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero),
            ),
            child: child,
          ),
        );
  final Widget page;
}
