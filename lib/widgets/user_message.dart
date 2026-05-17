import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:robochan/theme/theme.dart';

class MessageBubble extends StatelessWidget {
  final String text;
  final bool isUser;
  const MessageBubble({super.key, required this.text, required this.isUser});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  text,
                  style: AppTheme.PrimaryText.copyWith(fontSize: 12),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
