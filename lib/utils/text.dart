import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_authentication_ui/utils/colors.dart';

const kTextWhiteScreamBold = TextStyle(
  fontFamily: 'scream-real-regular',
  color: Colors.white,
  letterSpacing: .5,
  height: 1,
);
const kTextBlackScreamBold = TextStyle(
  fontFamily: 'scream-real-regular',
  color: Colors.black,
  letterSpacing: .5,
  height: 1,
);

TextStyle kTextBarlowItalic = GoogleFonts.barlowSemiCondensed(
    textStyle:
        const TextStyle(color: kPrimaryColor, fontStyle: FontStyle.italic));
TextStyle kTextBarlowReg = GoogleFonts.barlowSemiCondensed(
    textStyle: const TextStyle(color: kPrimaryColor));
