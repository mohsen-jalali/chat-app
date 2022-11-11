import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:chat_app/src/domain/bloc/theme_cubit/theme_cubit.dart';
import 'package:chat_app/src/presentation/constants/colors/dark_theme.dart';
import 'package:chat_app/src/presentation/constants/colors/light_theme.dart';
import 'package:chat_app/src/presentation/constants/styles/text_styles.dart';
import 'package:chat_app/src/presentation/helper/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Splash Page",
                style: Styles.headline6,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
