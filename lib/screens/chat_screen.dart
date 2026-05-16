import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:robochan/theme/theme.dart';
import 'package:robochan/widgets/text_input.dart';
import 'package:robochan/widgets/header.dart';
import 'package:robochan/widgets/typing_indicator.dart';
import 'package:robochan/widgets/user_message.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: AppTheme.Primary,
      child: SafeArea(
        child: Column(
          children: [
            const Header(),
            Expanded(child: Container()),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(padding: EdgeInsets.all(10), child: MessageBubble()),
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.all(20)),
                TypingIndicator(),
              ],
            ),
            ChatInput(),
          ],
        ),
      ),
    );
  }
}
