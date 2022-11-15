import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:chat_app/src/domain/bloc/chat_list_cubit/chat_list_cubit.dart';
import 'package:chat_app/src/domain/bloc/chat_list_cubit/chat_list_state.dart';
import 'package:chat_app/src/domain/model/chat/chat_list.dart';
import 'package:chat_app/src/presentation/common_widgets/app_bar.dart';
import 'package:chat_app/src/presentation/common_widgets/icon_button.dart';
import 'package:chat_app/src/presentation/helper/extensions/extensions.dart';
import 'package:chat_app/src/presentation/pages/chat_list/widgets/drawer.dart';
import 'package:chat_app/src/presentation/pages/chat_list/widgets/widget_chat_list_item.dart';
import 'package:chat_app/src/presentation/pages/chat_list/widgets/widget_skeleton_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatListPage extends StatefulWidget {
  const ChatListPage({Key? key}) : super(key: key);

  @override
  State<ChatListPage> createState() => _ChatListPageState();
}

class _ChatListPageState extends State<ChatListPage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  late ChatListCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = context.read<ChatListCubit>();
    getChatHistory();
  }

  void  getChatHistory(){
    cubit.getChatHistory();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: Scaffold(
        key: scaffoldKey,
        appBar: CustomAppbar(
          title: context.getStrings.appName,
          actions: [
            IconWidget(
              iconData: Icons.search,
              size: 27,
              onPressed: () {},
            ),
          ],
          leading: IconWidget(
            iconData: Icons.menu,
            size: 27,
            onPressed: () {
              scaffoldKey.currentState?.openDrawer();
            },
          ),
        ),
        drawer: const DrawerWidget(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          elevation: 1,
          child: const IconWidget(
            iconData: Icons.add,
            iconColor: Colors.white,
          ),
          onPressed: () {},
        ),
        body: SafeArea(
          child: BlocBuilder<ChatListCubit, ChatListState>(
            builder: (context, state) {
              if (state is ChatListGetMessagesState) {
                return state.when(
                  loading: () => const ChatListSkeletonLoading(),
                  failed: (error) => const SizedBox(),
                  succeeded: (chatList) => ListView.separated(
                    itemBuilder: (context, index) => ChatListItem(
                      chatItem: chatList[index],
                    ),
                    itemCount: chatList.length,
                    separatorBuilder: (context, index) => Divider(
                      color: Theme.of(context).colorScheme.onBackground,
                      height: 0,
                    ),
                  ),
                );
              }
              return const SizedBox();
            },
          ),
        ),
      ),
    );
  }
}
