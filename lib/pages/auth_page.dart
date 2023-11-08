import 'package:flutter/material.dart';
import 'package:simple_authentication_ui/utils/colors.dart';
import 'package:simple_authentication_ui/utils/images.dart';
import 'package:simple_authentication_ui/utils/text.dart';
import 'package:simple_authentication_ui/utils/textfield_decoration.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final emailTEC = TextEditingController();
  final passTEC = TextEditingController();

  @override
  void dispose() {
    emailTEC.dispose();
    passTEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Stack(
          children: [
            Container(),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.white,
                    Colors.white,
                    kLightGreenColor,
                  ],
                ),
              ),
            ),
            Image.asset(
              kTopBannerImage,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: ListView(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height / 4),
                      Center(
                        child: Text(
                          "Mixing\nUP",
                          style: kTextWhiteScreamBold.copyWith(
                            fontSize: 50,
                            color: kPrimaryColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 40),
                      SizedBox(
                        height: 40,
                        child: Material(
                          elevation: 4,
                          shadowColor: Colors.grey[200],
                          borderRadius: BorderRadius.circular(100),
                          child: TextField(
                              decoration: kDefaultInput.copyWith(
                                  hintText: "Alamat Email")),
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        height: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: SizedBox(
                                width: 200,
                                child: SizedBox(
                                  height: 40,
                                  child: Material(
                                    elevation: 4,
                                    shadowColor: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(100),
                                    child: TextField(
                                      decoration: kDefaultInput.copyWith(
                                          hintText: "Password"),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            // const SizedBox(width: 20),
                            InkWell(
                              onTap: () {
                                // LOGIN DISINI
                                print("JALANKAN FUNCTION LOGIN");
                              },
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: kPrimaryColor,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 5,
                                      spreadRadius: 1,
                                      color: Colors.grey,
                                      offset: Offset(.5, .5),
                                    )
                                  ],
                                ),
                                child: Center(
                                    child: Text(
                                  "Login",
                                  style: kTextWhiteScreamBold.copyWith(
                                    fontSize: 15,
                                  ),
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 1,
                              width: 120,
                              color: Colors.grey,
                            ),
                            Text(
                              "ATAU",
                              style: kTextBarlowReg.copyWith(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              height: 1,
                              width: 120,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: kGreenColor),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 2,
                              spreadRadius: .2,
                              color: Colors.grey[300]!,
                              offset: const Offset(.5, 4),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 50,
                              child: Image.asset(
                                kGoogleIcon,
                                height: 30,
                              ),
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: Text(
                                "Login dengan akun Google",
                                style: kTextBarlowReg.copyWith(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
