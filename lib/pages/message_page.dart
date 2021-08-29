import 'package:animations/animations.dart';

import '/theme.dart';
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
        backgroundColor: secondaryColor,
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
                    children: [],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
