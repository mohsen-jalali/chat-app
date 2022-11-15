import 'package:chat_app/src/domain/bloc/chat_list_cubit/chat_list_state.dart';
import 'package:chat_app/src/domain/model/chat/chat_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatListCubit extends Cubit<ChatListState> {
  ChatListCubit() : super(ChatListInitState());

  Future<void> getChatHistory() async {
    emit(const ChatListGetMessagesState.loading());
    await Future.delayed(const Duration(seconds: 1));

    List<ChatItem> chatHistory = [
      ChatItem(
          contactName: "Max",
          lastMessage: "How are you?",
          messageDate: DateTime.tryParse("2022-11-15 14:51:32"),
          unreadMessages: 2),
      ChatItem(
          contactName: "Ava",
          lastMessage: "When would you like to meet?",
          messageDate: DateTime.tryParse("2022-11-15 12:51:32"),
          unreadMessages: 120),
      ChatItem(
        contactName: "Jimmy",
        lastMessage: "Friday works for meee",
        messageDate: DateTime.tryParse("2022-11-14 14:51:32"),
      ),
      ChatItem(
        contactName: "Mona",
        lastMessage: "Fuck off!!!!!",
        messageDate: DateTime.tryParse("2022-11-10 14:51:32"),
      ),
      ChatItem(
        contactName: "Max",
        lastMessage: "How are you?",
        messageDate: DateTime.tryParse("2022-10-09 14:51:32"),
      ),
      ChatItem(
        contactName: "Max",
        lastMessage: "How are you?",
        messageDate: DateTime.tryParse("2022-01-15 14:51:32"),
      ),
    ];

    emit(ChatListGetMessagesState.succeeded(chatHistory));
  }
}
