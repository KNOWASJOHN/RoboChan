import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:robochan/theme/theme.dart';

class ChatInput extends StatelessWidget {
  const ChatInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          Expanded(
            child: CupertinoTextField(
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppTheme.Secondary,
              ),
              placeholder: "Talk with RoboChan",
              textAlign: TextAlign.center,
              placeholderStyle: const TextStyle(
                color: Colors.white24,
                fontSize: 10,
                letterSpacing: 0.5,
              ),

              style: AppTheme.PrimaryText
            ),
          ),
          const SizedBox(width: 0),
          CupertinoButton(
            padding: EdgeInsets.zero,
            child: const Icon(CupertinoIcons.arrow_right_circle_fill, size: 40, color: Colors.blue),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
