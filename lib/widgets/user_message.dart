import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:robochan/theme/theme.dart';
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';

class MessageBubble extends StatelessWidget {
  final String text;
  final bool isUser;
  const MessageBubble({super.key, required this.text, required this.isUser});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isUser
          ? MainAxisAlignment.end
          : MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Flexible(
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: isUser
                      ? Colors.lightBlueAccent
                      : Colors.lightGreenAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: MarkdownBody(
                    data: text,
                    selectable: true,
                    styleSheet: MarkdownStyleSheet(
                      p: isUser
                          ? AppTheme.PrimaryText.copyWith(fontSize: 12)
                          : AppTheme.SecondaryText.copyWith(fontSize: 12),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
