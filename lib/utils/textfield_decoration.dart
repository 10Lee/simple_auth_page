import 'package:flutter/material.dart';
import 'package:simple_authentication_ui/utils/colors.dart';
import 'package:simple_authentication_ui/utils/text.dart';

InputDecoration get kDefaultInput => InputDecoration(
      hintStyle: kTextBarlowItalic,
      filled: true,
      fillColor: kLightGreenColor,
      contentPadding: const EdgeInsets.only(bottom: 10, left: 20),
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(100),
      ),
    );
