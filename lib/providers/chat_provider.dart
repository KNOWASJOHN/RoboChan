import 'package:flutter/cupertino.dart';
import 'package:robochan/models/message_model.dart';
import 'package:robochan/services/gemini_service.dart';

class ChatProvider extends ChangeNotifier {
  final List<MessageModel> messages = [];
  final GeminiService _geminiService = GeminiService();

  bool isLoading = false;

  Future<void> sendMessage(String text) async {
    messages.add(MessageModel(text: text, isUser: true));

    isLoading = true;

    notifyListeners();

    final botReply = await _geminiService.getResponse(text);

    messages.add(MessageModel(text: botReply, isUser: false));

    isLoading = false;
    notifyListeners();
  }
}
