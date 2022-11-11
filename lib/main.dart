import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:chat_app/src/domain/bloc/theme_cubit/theme_cubit.dart';
import 'package:chat_app/src/injector.dart';
import 'package:chat_app/src/presentation/config/animated_page_route_builder.dart';
import 'package:chat_app/src/presentation/config/navigation_observer.dart';
import 'package:chat_app/src/presentation/config/screen_responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/strings.dart';
import 'package:kiwi/kiwi.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Injector.inject();
  BlocOverrides.runZoned(
    () => runApp(
      MultiBlocProvider(
        providers: [
          BlocProvider<ThemeCubit>(
              create: (context) => ThemeCubit(KiwiContainer().resolve())),
        ],
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final botToastBuilder = BotToastInit();

    return FutureBuilder<ThemeData>(
      future: context.read<ThemeCubit>().checkTheme(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ThemeProvider(
            initTheme: snapshot.data!,
            builder: (context, theme) => Responsive(
              builder: (context) => MaterialApp(
                title: 'Chat Application',
                debugShowCheckedModeBanner: false,
                navigatorKey: navigatorKey,
                theme: theme,
                navigatorObservers: [
                  KiwiContainer().resolve<NavigationObserver>(),
                  BotToastNavigatorObserver(),
                ],
                builder: (context, child) => botToastBuilder(context, child),
                localizationsDelegates: const [
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                onGenerateRoute: (settings) =>
                    AnimatedPageRouteBuilder(settings),
              ),
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
