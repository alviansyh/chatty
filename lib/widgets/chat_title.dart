import 'package:chatty/pages/message_page.dart';

import '/theme.dart';
import 'package:flutter/material.dart';

class ChatTitle extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String text;
  final String time;
  final bool unread;

  const ChatTitle(
      {Key? key,
      required this.imageUrl,
      required this.name,
      required this.text,
      required this.time,
      required this.unread})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MessagePage(),
            ),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipOval(
              child: Image.asset(
                imageUrl,
                height: 55,
                width: 55,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: titleTextStyle,
                ),
                Text(
                  text,
                  style: unread
                      ? subtitleTextStyle.copyWith(color: txtDarkBlueColor)
                      : subtitleTextStyle,
                ),
              ],
            ),
            Spacer(),
            Text(
              time,
              style: subtitleTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
