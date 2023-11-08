import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_authentication_ui/utils/colors.dart';

const kTextScream = TextStyle(
  fontFamily: 'scream-real-regular',
  color: Colors.white,
  letterSpacing: .5,
  height: 1,
);

TextStyle kTextBarlowItalic = GoogleFonts.barlowSemiCondensed(
    textStyle:
        const TextStyle(color: kPrimaryColor, fontStyle: FontStyle.italic));

TextStyle kTextBarlowReg = GoogleFonts.barlowSemiCondensed(
    textStyle: const TextStyle(color: kPrimaryColor));
