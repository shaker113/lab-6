// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:myapp/customWidget/text.dart';

import 'buttons.dart';
import 'infomation.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 200, bottom: 200, left: 70, right: 70),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // SizedBox(
            //   height: 20,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  foregroundImage: AssetImage(
                    "images/6.jpg",
                  ),
                  radius: 25,
                ),
                const SizedBox(
                  width: 10,
                ),
                customTextCenter(title: "shaker اهلا")
              ],
            ),
            information(
              theSubTitle: "shaker.baker113@gmail.com",
              theTitle: "البريد الالكتروني",
            ),
            information(theTitle: "تاريخ الميلاد", theSubTitle: "21/4/2000"),
            information(
                theTitle: "التخصص",
                theSubTitle: "Flutter Mobile Application Development"),
            // SizedBox(
            //   height: 10,
            // ),

            const logoutButton()
          ],
        ),
      ),
    );
  }
}
