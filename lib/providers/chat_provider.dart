import 'package:flutter/cupertino.dart';
import 'package:robochan/models/message_model.dart';

class ChatProvider extends ChangeNotifier{
  List<MessageModel> messages = [];

  bool isLoading = false;

  void sendMessage(String text){
    messages.add(
      MessageModel(text: text, isUser: true) 
    );
    notifyListeners();
  }
}