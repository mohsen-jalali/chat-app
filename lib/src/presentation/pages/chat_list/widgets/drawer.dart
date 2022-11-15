import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:chat_app/src/domain/bloc/theme_cubit/theme_cubit.dart';
import 'package:chat_app/src/presentation/common_widgets/background_widget.dart';
import 'package:chat_app/src/presentation/common_widgets/image_widget.dart';
import 'package:chat_app/src/presentation/common_widgets/text_widget.dart';
import 'package:chat_app/src/presentation/common_widgets/toggle_switch_widget.dart';
import 'package:chat_app/src/presentation/constants/colors/dark_theme.dart';
import 'package:chat_app/src/presentation/constants/colors/light_theme.dart';
import 'package:chat_app/src/presentation/helper/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 300,
      backgroundColor: Theme.of(context).colorScheme.background,
      elevation: 10,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RoundedBackgroundWidget(
            horizontalPadding: 16,
            verticalPadding: 12,
            child: SafeArea(
              bottom: false,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ImageLoaderWidget.fromNetwork(
                        imageUrl: "https://picsum.photos/seed/picsum/200/300",
                        width: 80.w,
                        height: 80.w,
                        boxFit: BoxFit.cover,
                        boxShape: BoxShape.circle,
                      ),
                      const Spacer(),
                      ThemeSwitcher.withTheme(
                        builder: (_, switcher, theme) => ToggleSwitchWidget(
                          toggleSwitchInit: context.isDark
                              ? ToggleSwitchInit.end
                              : ToggleSwitchInit.start,
                          backColor: Theme.of(context).colorScheme.background,
                          toggleBackColor: Theme.of(context).colorScheme.onBackground,
                          startWidget: Icon(
                            Icons.wb_sunny_outlined,
                            size: 18,
                            color: context.isDark ? Colors.white : Colors.black,
                          ),
                          endWidget: Icon(Icons.dark_mode,
                              size: 18,
                              color: context.isDark ? Colors.white : Colors.black),
                          onChanged: (isLeft) {
                            context.read<ThemeCubit>().changeTheme(!context.isDark);
                            switcher.changeTheme(
                                theme: context.isDark ? lightTheme : darkTheme);
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextWidget.bold(
                    "Amir Jabari",
                    context: context,
                    additionalStyle: TextStyle(fontSize: 16.sp),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextWidget.medium(
                    "@amir.jabari",
                    context: context,
                    additionalStyle: TextStyle(
                      fontSize: 14.sp,
                      color: Theme.of(context).colorScheme.tertiaryContainer,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
