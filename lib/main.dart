import 'package:flutter/cupertino.dart';
import 'app/app.dart';
import 'package:provider/provider.dart';
import 'screens/chat_screen.dart';
import 'providers/chat_provider.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GoogleFonts.pendingFonts([
    GoogleFonts.unbounded(),
    GoogleFonts.specialGothicExpandedOne(),
  ]);

  runApp(
    ChangeNotifierProvider(
      create: (context) => ChatProvider(),
      child: const CupertinoApp(
        debugShowCheckedModeBanner: false,
        home: ChatScreen(),
      ),
    ),
  );
}
