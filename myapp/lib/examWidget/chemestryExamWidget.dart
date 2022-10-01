import 'package:flutter/material.dart';

import 'package:myapp/global/global.dart' as globals;

import '../customWidget/buttons.dart';
import '../logic/examlogic.dart';

class chemestryexamWidget extends StatefulWidget {
  const chemestryexamWidget({super.key});

  @override
  State<chemestryexamWidget> createState() => _chemestryexamWidgetState();
}

class _chemestryexamWidgetState extends State<chemestryexamWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        examLogic(
          mark: globals.examMark,
          theQuestions: "العدد الذري لذرة الكربون :",
          theAnswers: const ["5", "6", "7", "8"],
          correctAnswer: "6",
        ),
        examLogic(
          mark: globals.examMark,
          theQuestions: "اي من الاتي لي من الغازات النبيلة: ",
          theAnswers: const ["He", "Ar", "Rn", "Mg"],
          correctAnswer: "Mg",
        ),
        examLogic(
            mark: globals.examMark,
            theQuestions: "تفاعل الاكسجين مع الحديد ينتج عنه :",
            theAnswers: const [
              "الصدا",
              "الماء",
              "الحديد لا يتفاعل مع الاكسجين",
              "كربونات الكاسيوم"
            ],
            correctAnswer: "الصدا"),
        finishExam(
          markSys: 2,
          mark: globals.examMarkc,
        )
      ],
    );
  }
}
