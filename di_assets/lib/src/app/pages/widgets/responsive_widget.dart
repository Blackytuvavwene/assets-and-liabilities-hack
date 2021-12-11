import 'package:flutter/material.dart';
import 'package:layout/layout.dart';

class ResLayout extends StatelessWidget {
  const ResLayout({
    required this.web,
    required this.tablet,
    required this.phone,
  });

  final Widget web;
  final Widget tablet;
  final Widget phone;
  //final BuildContext? context;

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 640;
  }

  static bool isWeb(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1008;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width >= 641 &&
        MediaQuery.of(context).size.width <= 1007;
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveBuilder(
      xs: (context) => phone,
      sm: (context) => tablet,
      md: (context) => web,
      xl: (context) => web,
    );
  }
}
