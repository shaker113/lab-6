import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class takingEmailInput extends StatefulWidget {
  takingEmailInput({
    required this.emailInput,
    required this.label,
  });
  TextEditingController emailInput = TextEditingController();

  String label;
  @override
  State<takingEmailInput> createState() => _takingEmailInputState();
}

class _takingEmailInputState extends State<takingEmailInput> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: TextField(
        cursorColor: Colors.greenAccent.shade700,
        controller: widget.emailInput,
        decoration: InputDecoration(
          labelText: widget.label,
          labelStyle: TextStyle(color: Colors.grey[900], fontFamily: "Cairo"),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.greenAccent.shade700),
          ),
        ),
      ),
    );
  }
}

class takingPasswordInput extends StatefulWidget {
  takingPasswordInput({
    required this.passwordlInput,
    required this.label,
  });
  TextEditingController passwordlInput = TextEditingController();

  String label;
  @override
  State<takingPasswordInput> createState() => _takingPasswordInputState();
}

class _takingPasswordInputState extends State<takingPasswordInput> {
  bool scureText = true;
  IconData redEye = Icons.remove_red_eye;
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: TextField(
        controller: widget.passwordlInput,
        obscureText: scureText,
        cursorColor: Colors.greenAccent.shade700,
        decoration: InputDecoration(
          labelText: widget.label,
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.greenAccent.shade700),
          ),
          labelStyle: TextStyle(color: Colors.grey[900], fontFamily: "Cairo"),
          suffixIcon: IconButton(
            icon: Icon(
              redEye,
              color: Colors.greenAccent.shade700,
            ),
            onPressed: () {
              setState(
                () {
                  scureText = !scureText;
                  if (scureText == true) {
                    redEye = Icons.remove_red_eye;
                  } else {
                    redEye = Icons.remove_red_eye_outlined;
                  }
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
