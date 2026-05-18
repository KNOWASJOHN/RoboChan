import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class GeminiService {
  final String apiKey = dotenv.env['GEMINI_API'] ?? '';

  Future<String> getResponse(String prompt) async{
    try{
      final model =GenerativeModel(model: 'gemini-2.5-flash-lite', apiKey: apiKey);

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