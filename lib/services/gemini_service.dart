import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class GeminiService {
  final String apiKey = dotenv.env['GEMINI_API'] ?? '';

  Future<String> getResponse(String prompt) async{
    try{
      final robochan = await rootBundle.loadString('Robochan.txt');
      final model =GenerativeModel(model: 'gemini-3.1-flash-lite', apiKey: apiKey,
      systemInstruction: Content.text(robochan)
      );

      final response = await model.generateContent([
        Content.text(prompt)
      ]);

      return response.text ?? "No response!!";
    }
    catch (e){
      return "Failed to get Response";
    }
  } 
}