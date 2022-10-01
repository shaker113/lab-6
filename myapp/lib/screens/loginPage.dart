import 'package:flutter/material.dart';
import 'package:myapp/customWidget/textField.dart';

import '../customWidget/buttons.dart';
import '../logic/loginLogic.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  TextEditingController inputEmail = TextEditingController();
  TextEditingController inputPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/1.jpg"),
              fit: BoxFit.fitHeight,
            ),
          ),
          child: Container(
            margin: const EdgeInsets.only(
                top: 200, bottom: 270, left: 20, right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Column(
              children: [
                const Text(
                  "استخدم الايميل الجامعي",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Cairo',
                      fontSize: 30,
                      fontWeight: FontWeight.w500),
                ),
                const Divider(
                  height: 40,
                  color: Colors.transparent,
                ),
                takingEmailInput(emailInput: inputEmail, label: "اسم المستخدم"),
                const Divider(
                  height: 20,
                  color: Colors.transparent,
                ),
                takingPasswordInput(
                    passwordlInput: inputPassword, label: "كلمة السر"),
                const Divider(
                  height: 20,
                  color: Colors.transparent,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const backButton(),
                    loginButton(
                      inputEmail: inputEmail,
                      inputPassword: inputPassword,
                    ),
                  ],
                ),
                const Divider(
                  height: 10,
                  color: Colors.transparent,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
