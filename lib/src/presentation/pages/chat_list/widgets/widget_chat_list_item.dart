import 'package:chat_app/src/domain/model/chat/chat_list.dart';
import 'package:chat_app/src/presentation/common_widgets/image_widget.dart';
import 'package:chat_app/src/presentation/common_widgets/tag_widget.dart';
import 'package:chat_app/src/presentation/common_widgets/text_widget.dart';
import 'package:chat_app/src/presentation/helper/extensions/date_time_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatListItem extends StatelessWidget {
  final ChatItem chatItem;

  const ChatListItem({
    Key? key,
    required this.chatItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
        child: Row(
          children: [
            ImageLoaderWidget.fromNetwork(
              imageUrl: "https://picsum.photos/seed/picsum/200/300",
              width: 50.w,
              height: 50.w,
              boxFit: BoxFit.cover,
              boxShape: BoxShape.circle,
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextWidget.bold(
                          chatItem.contactName ?? "",
                          context: context,
                          overflow: TextOverflow.ellipsis,
                          additionalStyle: TextStyle(
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Visibility(
                        visible: chatItem.unreadMessages != null &&
                            chatItem.unreadMessages != 0,
                        child: TagWidget.rectangle(
                          value: (chatItem.unreadMessages ?? 0).toString(),
                          backgroundColor: Theme.of(context).primaryColor,
                          padding: 6,
                          borderRadius: 15,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextWidget.bold(
                          chatItem.lastMessage ?? "",
                          context: context,
                          overflow: TextOverflow.ellipsis,
                          additionalStyle: TextStyle(
                            fontSize: 14.sp,
                            color:
                                Theme.of(context).colorScheme.tertiaryContainer,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      TextWidget.bold(
                        chatItem.messageDate?.differenceTime ?? "",
                        context: context,
                        additionalStyle: TextStyle(
                          fontSize: 12.sp,
                          color:
                              Theme.of(context).colorScheme.tertiaryContainer,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
