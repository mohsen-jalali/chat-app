import 'package:chat_app/src/domain/bloc/chat_list_cubit/chat_list_cubit.dart';
import 'package:chat_app/src/domain/bloc/splash_cubit/splash_cubit.dart';
import 'package:chat_app/src/presentation/pages/chat_list/chat_list_page.dart';
import 'package:chat_app/src/presentation/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiwi/kiwi.dart';
import 'package:chat_app/src/presentation/config/app_routes.dart';

class RouteGenerator {
  static Map<String, WidgetBuilder> getRoutes(RouteSettings settings) {
    KiwiContainer di = KiwiContainer();
    return {
      Routes.splash: (context) => BlocProvider(
            create: (context) => SplashCubit(),
            child: const SplashPage(),
          ),
      Routes.chatList: (context) => BlocProvider(
        create: (context) => ChatListCubit(),
        child: const ChatListPage(),
      ),
    };
  }
}
