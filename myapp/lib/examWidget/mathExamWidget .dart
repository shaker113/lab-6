import 'package:flutter/material.dart';

import '../customWidget/buttons.dart';
import '../logic/examlogic.dart';
import 'package:myapp/global/global.dart' as globals;

class mathExamWidget extends StatefulWidget {
  const mathExamWidget({super.key});

  @override
  State<mathExamWidget> createState() => _mathExamWidgetState();
}

class _mathExamWidgetState extends State<mathExamWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        examLogic(
          mark: globals.examMarkm,
          theQuestions: "لو10",
          theAnswers: const ["غير معرف", "0", "1", "10"],
          correctAnswer: "1",
        ),
        examLogic(
          mark: globals.examMarkm,
          theQuestions: "جاس دس ∫",
          theAnswers: const ["-جتا س + ث", "-جا س +ث", "جتا س + ث", "جا س +ث"],
          correctAnswer: "جتا س + ث",
        ),
        examLogic(
          mark: globals.examMarkm,
          theQuestions: "30 درجة تساوي بالراد:",
          theAnswers: const ["π/6", "π/4", "π/3", "π"],
          correctAnswer: "π/6",
        ),
        finishExam(
          markSys: 3,
          mark: globals.examMarkm,
        )
      ],
    );
  }
}
