import 'package:flutter/material.dart';
import 'package:simple_authentication_ui/utils/colors.dart';
import 'package:simple_authentication_ui/utils/text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: kPrimaryColor,
        child: Center(
          child: Text(
            "Mixing\nUP",
            style: kTextWhiteScreamBold.copyWith(fontSize: 50),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
