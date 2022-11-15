import 'package:chat_app/src/presentation/common_widgets/skeleton_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatListSkeletonLoading extends StatelessWidget {
  const ChatListSkeletonLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
        child: Row(
          children: [
            SkeletonWidget.circular(
              width: 50.w,
              height: 50.w,
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SkeletonWidget.rectangular(
                    width: 120.w,
                    height: 15.w,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  SkeletonWidget.rectangular(
                    width: 80.w,
                    height: 10.w,
                  ),
                ],
              ),
            ),
            SkeletonWidget.rectangular(
              width: 40.w,
              height: 15.w,
            ),
          ],
        ),
      ),
      itemCount: 10,
      separatorBuilder: (context, index) => Divider(
        color: Theme.of(context).colorScheme.onBackground,
        height: 0,
      ),
    );
  }
}
