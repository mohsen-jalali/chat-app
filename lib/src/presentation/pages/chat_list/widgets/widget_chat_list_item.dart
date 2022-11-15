import 'package:chat_app/src/domain/model/chat/chat_list.dart';
import 'package:chat_app/src/presentation/common_widgets/image_widget.dart';
import 'package:chat_app/src/presentation/common_widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatListItem extends StatelessWidget {
  final ChatList chatList;

  const ChatListItem({
    Key? key,
    required this.chatList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget.bold(
              chatList.contactName ?? "",
              context: context,
              additionalStyle: TextStyle(
                fontSize: 16.sp,
              ),
            ),
            const SizedBox(height: 6,),
            Row(
              children: [
                Expanded(
                  child: TextWidget.bold(
                    chatList.lastMessage ?? "",
                    context: context,
                    additionalStyle: TextStyle(
                      fontSize: 14.sp,
                      color: Theme.of(context).colorScheme.tertiaryContainer
                    ),
                  ),
                ),
                const SizedBox(width: 16,),
              ],
            ),
          ],
        )
      ],
    );
  }
}
