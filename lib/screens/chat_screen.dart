import 'package:flutter/cupertino.dart';
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
        child: Column(
          children: [
            const Header(),
            Expanded(
              child: ListView.builder(
                itemCount: chatProvider.messages.length,
                itemBuilder: (context, index) {
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
            if(chatProvider.isLoading)
              const Padding(padding: EdgeInsets.all(10),
              child: TypingIndicator(),
              ),
            ChatInput(),
          ],
        ),
      ),
    );
  }
}
