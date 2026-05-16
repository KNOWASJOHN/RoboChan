import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color Primary = CupertinoColors.white;
  static const Color Secondary = CupertinoColors.black;

  static final TextStyle PrimaryText = GoogleFonts.unbounded(
    fontWeight: FontWeight.normal,
    color: Primary,
  );

  static final TextStyle SecondaryText = GoogleFonts.specialGothicExpandedOne(
    fontWeight: FontWeight.normal,
    color: Secondary,
  );

}