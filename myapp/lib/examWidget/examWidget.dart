import 'package:flutter/material.dart';
import 'package:myapp/customWidget/buttons.dart';

import 'package:myapp/logic/examlogic.dart';
import 'package:myapp/global/global.dart' as globals;

class examWidget extends StatefulWidget {
  const examWidget({super.key});

  @override
  State<examWidget> createState() => _examWidgetState();
}

class _examWidgetState extends State<examWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        examLogic(
          mark: globals.examMark,
          theQuestions: "اي عام استقل الاردن:",
          theAnswers: const ["1948", "1946", "1928", "1950"],
          correctAnswer: "1946",
        ),
        examLogic(
          mark: globals.examMark,
          theQuestions: "اي يوم استقل الاردن:",
          theAnswers: const ["21/6", "21/5", "25/6", "25/5"],
          correctAnswer: "25/5",
        ),
        examLogic(
          mark: globals.examMark,
          theQuestions: "ما رمز اللون الاخضر في علم الاردن:",
          theAnswers: const [
            "راية الثورة العربية الكبرى",
            "راية آل البيت",
            "راية الدولة الأموية",
            " راية الدولة العباسية"
          ],
          correctAnswer: "راية آل البيت",
        ),
        finishExam(
          markSys: 0,
          mark: globals.examMark,
        )
      ],
    );
  }
}
