import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:robochan/theme/theme.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: SafeArea(
        bottom: false,
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 10.0),
            child: Container(
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: AppTheme.Secondary,
                    backgroundImage: AssetImage('assets/profile/profile.png'),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "RoboChan",
                    style: AppTheme.PrimaryText.copyWith(color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
