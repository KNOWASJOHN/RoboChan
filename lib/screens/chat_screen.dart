import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:robochan/providers/chat_provider.dart';
import 'package:provider/provider.dart';
import 'package:robochan/theme/theme.dart';
import 'package:robochan/widgets/text_input.dart';
import 'package:robochan/widgets/header.dart';
import 'package:robochan/widgets/typing_indicator.dart';
import 'package:robochan/widgets/user_message.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final chatProvider = Provider.of<ChatProvider>(context);

    return CupertinoPageScaffold(
      backgroundColor: AppTheme.Primary,
      child: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.only(top: 80.0, bottom: 80.0),
                    itemCount:
                        chatProvider.messages.length +
                        (chatProvider.isLoading ? 1 : 0),
                    itemBuilder: (context, index) {
                      if (chatProvider.isLoading && index == chatProvider.messages.length) {
                        return const Padding(
                          padding: EdgeInsets.all(10),
                          child: TypingIndicator(),
                        );
                      }
                      final message = chatProvider.messages[index];
                      return (Padding(
                        padding: EdgeInsets.all(20),
                        child: MessageBubble(
                          text: message.text,
                          isUser: message.isUser,
                        ),
                      ));
                    },
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SafeArea(top: false, child: ChatInput()),
            ),
            const Header(),
          ],
        ),
      ),
    );
  }
}
