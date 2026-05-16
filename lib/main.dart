import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'app/app.dart';
import 'screens/chat_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GoogleFonts.pendingFonts([
    GoogleFonts.unbounded(),
    GoogleFonts.specialGothicExpandedOne(),
  ]);

  runApp(
    const CupertinoApp(debugShowCheckedModeBanner: false, home: ChatScreen()),
  );
}