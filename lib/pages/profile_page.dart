import 'package:flutter/material.dart';
import 'package:simple_authentication_ui/utils/colors.dart';
import 'package:simple_authentication_ui/utils/images.dart';
import 'package:simple_authentication_ui/utils/text.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 20, top: 50),
              child: Text(
                "Mixing\nUP",
                style: kTextScream.copyWith(color: kPrimaryColor, fontSize: 40),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          SizedBox(
            child: Column(
              children: [
                Container(
                  height: 135,
                  width: 135,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: kPrimaryColor, width: 5),
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: CircleAvatar(
                      backgroundColor: kLightGreenColor,
                      backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D',
                      ),
                      radius: 60,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "johndoe@example.com",
                  style: kTextBarlowReg.copyWith(
                      fontWeight: FontWeight.bold, fontSize: 22),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                  ),
                  child: const Text(
                    "LOGOUT",
                    style: kTextScream,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          SizedBox(
            child: Image.asset(
              kBottomBannerImage,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
