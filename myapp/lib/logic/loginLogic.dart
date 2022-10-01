import 'package:flutter/material.dart';

import 'package:myapp/screens/mainPage.dart';

import '../screens/loginPage.dart';

class loginButton extends StatefulWidget {
  loginButton({required this.inputEmail, required this.inputPassword});
  TextEditingController inputEmail = TextEditingController();
  TextEditingController inputPassword = TextEditingController();

  @override
  State<loginButton> createState() => _loginButtonState();
}

class _loginButtonState extends State<loginButton> {
  String myEmail = "shaker";
  String myPasword = "123";
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.greenAccent[700],
          fixedSize: const Size(100, 20)),
      onPressed: () {
        setState(() {
          if (widget.inputEmail.text == myEmail &&
              widget.inputPassword.text == myPasword) {
            Navigator.of(context).push(
              MaterialPageRoute(
                settings: const RouteSettings(name: "mainPage"),
                builder: (context) => const mainPage(),
              ),
            );
          } else {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  actions: [
                    Center(
                      child: Column(
                        children: [
                          Text(
                            textAlign: TextAlign.center,
                            "$myPaswordيرجى التأكد من كلمة السر  $myEmailأو اسم المستخدم",
                            style: const TextStyle(
                                fontSize: 20,
                                fontFamily: "Cairo",
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                          const Divider(
                            thickness: 1,
                            height: 9,
                            color: Colors.white,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        color: Colors.greenAccent),
                                    borderRadius: BorderRadius.circular(7)),
                                fixedSize: const Size(150, 40),
                                backgroundColor: Colors.grey),
                            onPressed: () {
                              setState(
                                () {
                                  Navigator.pop(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return const loginPage();
                                      },
                                    ),
                                  );
                                },
                              );
                            },
                            child: const Text(
                              "اعد المحاولة",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Cairo",
                                  fontSize: 17,
                                  color: Colors.black),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                );
              },
            );
          }
        });
      },
      child: const Text(
        "الدخول",
        style: TextStyle(color: Colors.white, fontFamily: "Cairo"),
      ),
    );
  }
}
