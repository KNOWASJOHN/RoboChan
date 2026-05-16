import 'package:flutter/material.dart';
import 'package:robochan/theme/theme.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(15),
    child:Row(
      children: [
        CircleAvatar(backgroundColor: AppTheme.Secondary,backgroundImage: AssetImage('assets/profile/profile.png'),),
        SizedBox(width: 10),
        Text("RoboChan", style: AppTheme.PrimaryText.copyWith(color: Colors.black)),
      ],
    )
    );
  }
}
