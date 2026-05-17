import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:robochan/theme/theme.dart';
import 'package:robochan/providers/chat_provider.dart';

class ChatInput extends StatelessWidget {
  ChatInput({super.key});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          Expanded(
            child: CupertinoTextField(
              controller: controller,
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

              style: AppTheme.PrimaryText,
            ),
          ),
          const SizedBox(width: 0),
          CupertinoButton(
            padding: EdgeInsets.zero,
            child: const Icon(
              CupertinoIcons.arrow_right_circle_fill,
              size: 40,
              color: CupertinoColors.systemGrey,
            ),
            onPressed:() {
              if (controller.text.trim().isEmpty) return;
              Provider.of<ChatProvider>(context,
              listen: false,
              ).sendMessage(controller.text.trim());

              controller.clear();
            },
          ),
        ],
      ),
    );
  }
}