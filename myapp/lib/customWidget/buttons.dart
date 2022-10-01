// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:myapp/customWidget/text.dart';
import 'package:myapp/examTab/examResults.dart';
import 'package:myapp/screens/WelcomePage.dart';
import 'package:myapp/examTab/exam.dart';
import 'package:myapp/global/global.dart' as globals;

class backButton extends StatefulWidget {
  const backButton({super.key});

  @override
  State<backButton> createState() => _backButtonState();
}

class _backButtonState extends State<backButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey[800], fixedSize: const Size(100, 20)),
      onPressed: () {
        setState(() {
          Navigator.pop(context, MaterialPageRoute(
            builder: (context) {
              return const welcomePage();
            },
          ));
        });
      },
      child: const Text(
        "الرجوع",
        style: TextStyle(color: Colors.white, fontFamily: "Cairo"),
      ),
    );
  }
}

// ignore: must_be_immutable
class examButton extends StatefulWidget {
  examButton({required this.examSubject});
  Widget examSubject;
  @override
  State<examButton> createState() => _examButtonState();
}

class _examButtonState extends State<examButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.greenAccent[700],
          fixedSize: const Size(110, 20)),
      onPressed: () {
        setState(() {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return examPage(
                examSubject: widget.examSubject,
              );
            },
          ));
        });
      },
      child: const Text(
        "بدء الامتحان",
        style: TextStyle(color: Colors.white, fontFamily: "Cairo"),
      ),
    );
  }
}

class finishExam extends StatefulWidget {
  finishExam({required this.mark, required this.markSys});
  int mark;
  int markSys;
  List globalMarkSys = [
    globals.examMark,
    globals.examMarkp,
    globals.examMarkc,
    globals.examMarkm
  ];
  @override
  State<finishExam> createState() => _finishExamState();
}

class _finishExamState extends State<finishExam> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 10.0, right: 40, left: 40, bottom: 10),
      child: Column(
        children: [
          customTextCenter(
              title: "في حال الانتهاء من الامتحان اضعظ انهاء الامتحان"),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.greenAccent[700],
                fixedSize: const Size(200, 20)),
            onPressed: () async {
              setState(
                () {
                  widget.globalMarkSys[widget.markSys] = globals.theMark;
                  widget.mark = globals.theMark;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return examResults(
                          mark: widget.mark,
                        );
                      },
                    ),
                  );
                },
              );
              globals.theMark = 0;

              print(widget.globalMarkSys[widget.markSys]);
            },
            child: customTextCenter(
              title: "انهاء الامتحان",
            ),
          ),
        ],
      ),
    );
  }
}

class logoutButton extends StatefulWidget {
  const logoutButton({super.key});
  @override
  State<logoutButton> createState() => _logoutButtonState();
}

class _logoutButtonState extends State<logoutButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.greenAccent[700],
            fixedSize: const Size(140, 20)),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                actions: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customTextCenter(title: "هل تريد تسجيل الخروج؟"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [backButton(), actionLogoutButton()],
                      )
                    ],
                  )
                ],
              );
            },
          );
        },
        child: customSmallTitle(title: "تسجيل الخروج"));
  }
}

class actionLogoutButton extends StatefulWidget {
  const actionLogoutButton({super.key});

  @override
  State<actionLogoutButton> createState() => _actionLogoutButtonState();
}

class _actionLogoutButtonState extends State<actionLogoutButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.greenAccent[700],
          fixedSize: const Size(110, 20)),
      onPressed: () {
        setState(() {
          Navigator.popUntil(
            context,
            ModalRoute.withName(Navigator.defaultRouteName),
          );
        });
      },
      child: const Text(
        "تسجيل الخروج",
        style: TextStyle(color: Colors.white, fontFamily: "Cairo"),
      ),
    );
  }
}
