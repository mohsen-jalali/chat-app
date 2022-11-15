import 'package:chat_app/src/domain/model/chat/chat_list.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_list_state.freezed.dart';

abstract class ChatListState{}


class ChatListInitState extends ChatListState{}


@freezed
class ChatListGetMessagesState extends ChatListState with _$ChatListGetMessagesState{
  const factory ChatListGetMessagesState.loading() = ChatroomGetMessageRequestingState;
  const factory ChatListGetMessagesState.failed({String? error}) = ChatroomGetMessageFailedState;
  const factory ChatListGetMessagesState.succeeded(List<ChatItem> chatList) = ChatroomGetMessageSucceededState;
}