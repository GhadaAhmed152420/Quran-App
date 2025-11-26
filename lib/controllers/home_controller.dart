import 'package:flutter/material.dart';
import '../core/resources/routes_manager.dart';

class HomeController {

  static void navigateToPlayScreen(BuildContext context, int index) {
    Navigator.pushNamed(context, RoutePaths.play,arguments: index);
  }
}
