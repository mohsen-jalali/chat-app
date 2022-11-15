import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:chat_app/src/domain/model/chat/chat_list.dart';
import 'package:chat_app/src/presentation/common_widgets/app_bar.dart';
import 'package:chat_app/src/presentation/common_widgets/icon_button.dart';
import 'package:chat_app/src/presentation/helper/extensions/extensions.dart';
import 'package:chat_app/src/presentation/pages/chat_list/widgets/drawer.dart';
import 'package:chat_app/src/presentation/pages/chat_list/widgets/widget_chat_list_item.dart';
import 'package:flutter/material.dart';

class ChatListPage extends StatefulWidget {
  const ChatListPage({Key? key}) : super(key: key);

  @override
  State<ChatListPage> createState() => _ChatListPageState();
}

class _ChatListPageState extends State<ChatListPage> {
  List<ChatList> chatList = [
    ChatList(
      contactName: "Max",
      lastMessage: "How are you?"
    ),
    ChatList(
        contactName: "Ava",
        lastMessage: "When would you like to meet?"
    ),
    ChatList(
        contactName: "Jimmy",
        lastMessage: "Friday works for meee"
    ),
    ChatList(
        contactName: "Mona",
        lastMessage: "Fuck off!!!!!"
    ),
    ChatList(
        contactName: "Max",
        lastMessage: "How are you?"
    ),
    ChatList(
        contactName: "Max",
        lastMessage: "How are you?"
    ),
  ];
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: Scaffold(
        key: scaffoldKey,
        drawer: const DrawerWidget(),
        appBar: CustomAppbar(
          title: context.getStrings.appName,
          actions: [
            IconButtonWidget(
              iconData: Icons.search,
              size: 27,
              onPressed: () {},
            ),
          ],
          leading: IconButtonWidget(
            iconData: Icons.menu,
            size: 27,
            onPressed: () {
              scaffoldKey.currentState?.openDrawer();
            },
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ListView.separated(
              itemBuilder: (context, index) => ChatListItem(
                chatList: chatList[index],
              ),
              itemCount: chatList.length,
              separatorBuilder: (context, index) => Divider(
                color: Theme.of(context).colorScheme.onBackground,
                height: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
