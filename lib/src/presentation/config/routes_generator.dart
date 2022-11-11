import 'package:chat_app/src/presentation/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiwi/kiwi.dart';
import 'package:chat_app/src/presentation/config/app_routes.dart';

class RouteGenerator {
  static Map<String, WidgetBuilder> getRoutes(RouteSettings settings) {
    KiwiContainer di = KiwiContainer();
    return {
    Routes.splash: (context) {
        return const SplashPage();
      }
    };
  }
}
