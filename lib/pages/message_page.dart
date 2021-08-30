import 'package:chatty/widgets/sender_bubble.dart';

import '/widgets/receiver_bubble.dart';
import '/theme.dart';

import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageTransitionSwitcher(
      transitionBuilder: (child, primaryAnimation, secondaryAnimation) =>
          FadeThroughTransition(
        animation: primaryAnimation,
        secondaryAnimation: secondaryAnimation,
        child: child,
      ),
      child: Scaffold(
        backgroundColor: systemMessageColor,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 115,
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(20),
                  ),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/profile/icon.png',
                      width: 55,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'PeopleBond Dev.',
                          style: titleTextStyle,
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          '4 members',
                          style: subtitleTextStyle,
                        ),
                      ],
                    ),
                    Spacer(),
                    ElevatedButton(
                      onPressed: () {},
                      child: Icon(Icons.phone, color: whiteColor),
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(35, 35),
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(2),
                          primary: greenColor,
                          shadowColor: greenColor),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: ListView(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            ReceiverBubble(
                              imageUrl: 'assets/profile/image 6.png',
                              text: 'Morning team',
                              time: '08:45',
                            ),
                            ReceiverBubble(
                              imageUrl: 'assets/profile/image 6.png',
                              text: 'How are ya guys?',
                              time: '08:46',
                            ),
                            ReceiverBubble(
                              imageUrl: 'assets/profile/image 8.png',
                              text: 'Find here :P',
                              time: '08:50',
                            ),
                            SenderBubble(
                              imageUrl: 'assets/profile/profile.jpg',
                              text:
                                  'Thinking about how to deal with this client from hell...',
                              time: '08:52',
                            ),
                            ReceiverBubble(
                              imageUrl: 'assets/profile/image 4.png',
                              text: 'Love them',
                              time: '08:53',
                            ),
                            SenderBubble(
                              imageUrl: 'assets/profile/profile.jpg',
                              text: 'Don\'t forget meeting at 2 PM guys',
                              time: '08:54',
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(75),
                    ),
                    child: SafeArea(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(left: 30),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "Type message",
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Icon(Icons.send,
                                        color: txtGreyBlueColor),
                                    style: ElevatedButton.styleFrom(
                                        fixedSize: Size(35, 35),
                                        shape: CircleBorder(),
                                        padding: EdgeInsets.all(2),
                                        primary: bubbleColor),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
