import '/widgets/chat_title.dart';
import '/theme.dart';
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
        backgroundColor: mainColor,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: greenColor,
          child: Icon(Icons.add, size: 28),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Stack(
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  ClipOval(
                    child: Image.asset(
                      'assets/profile/profile.jpg',
                      height: 100,
                      width: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Alviansyah',
                    style: headerTextStyle,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Developer',
                    style: subheaderTextStyle,
                  ),
                ],
              ),
            ),
            SizedBox.expand(
              child: DraggableScrollableSheet(
                initialChildSize: 0.66,
                minChildSize: 0.66,
                builder: (BuildContext c, s) {
                  return Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                    ),
                    child: ListView(
                      controller: s,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Friends',
                              style: titleTextStyle,
                            ),
                            ChatTitle(
                              imageUrl: 'assets/profile/image 4.png',
                              name: 'Laura',
                              text: 'Hey there i am using Chatty',
                              time: '14:36',
                              unread: true,
                            ),
                            ChatTitle(
                              imageUrl: 'assets/profile/image 8.png',
                              name: 'Alisha',
                              text: 'Hey there i am using Chatty',
                              time: '8/14/21',
                              unread: true,
                            ),
                            ChatTitle(
                              imageUrl: 'assets/profile/image 6.png',
                              name: 'Edward',
                              text: 'Thanks',
                              time: '8/13/21',
                              unread: false,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Groups',
                              style: titleTextStyle,
                            ),
                            ChatTitle(
                              imageUrl: 'assets/profile/icon.png',
                              name: 'PeopleBond Dev.',
                              text: 'Join Zoom Meeting',
                              time: '14:36',
                              unread: false,
                            ),
                            ChatTitle(
                              imageUrl: 'assets/profile/icon 2.png',
                              name: 'Discus',
                              text: '\'imgUrl\' have a value of \'null\'',
                              time: '8/14/21',
                              unread: false,
                            ),
                            ChatTitle(
                              imageUrl: 'assets/profile/icon 3.png',
                              name: 'My Notes',
                              text: 'Daily Task :',
                              time: '8/13/21',
                              unread: false,
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            // ListView(
            //   children: [
            //     Container(
            //       width: double.infinity,
            //       padding: EdgeInsets.all(30),
            //       decoration: BoxDecoration(
            //         color: whiteColor,
            //         borderRadius: BorderRadius.vertical(
            //           top: Radius.circular(40),
            //         ),
            //       ),
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Text(
            //             'Friends',
            //             style: titleTextStyle,
            //           ),
            //           ChatTitle(
            //             imageUrl: 'assets/profile/image 4.png',
            //             name: 'Laura',
            //             text: 'Hey there i am using Chatty',
            //             time: '14:36',
            //             unread: true,
            //           ),
            //           ChatTitle(
            //             imageUrl: 'assets/profile/image 8.png',
            //             name: 'Alisha',
            //             text: 'Hey there i am using Chatty',
            //             time: '8/14/21',
            //             unread: true,
            //           ),
            //           ChatTitle(
            //             imageUrl: 'assets/profile/image 6.png',
            //             name: 'Edward',
            //             text: 'Thanks',
            //             time: '8/13/21',
            //             unread: false,
            //           ),
            //           SizedBox(
            //             height: 30,
            //           ),
            //           Text(
            //             'Groups',
            //             style: titleTextStyle,
            //           ),
            //           ChatTitle(
            //             imageUrl: 'assets/profile/icon.png',
            //             name: 'PeopleBond Dev.',
            //             text: 'Join Zoom Meeting',
            //             time: '14:36',
            //             unread: false,
            //           ),
            //           ChatTitle(
            //             imageUrl: 'assets/profile/icon 2.png',
            //             name: 'Discus',
            //             text: '\'imgUrl\' have a value of \'null\'',
            //             time: '8/14/21',
            //             unread: false,
            //           ),
            //           ChatTitle(
            //             imageUrl: 'assets/profile/icon 3.png',
            //             name: 'My Notes',
            //             text: 'Daily Task :',
            //             time: '8/13/21',
            //             unread: false,
            //           ),
            //         ],
            //       ),
            //     ),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
