import 'package:flutter/material.dart';

import '../customWidget/buttons.dart';
import '../logic/examlogic.dart';
import 'package:myapp/global/global.dart' as globals;

class physicsexamWidget extends StatefulWidget {
  const physicsexamWidget({super.key});

  @override
  State<physicsexamWidget> createState() => _physicsexamWidgetState();
}

class _physicsexamWidgetState extends State<physicsexamWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        examLogic(
          mark: globals.examMarkp,
          theQuestions: "الى ماذا ترمز (𝜌) في قانون 𝜌 = 𝑀 𝑉",
          theAnswers: const ["الحجم", "السرعة", "الكثافة", "الكتلة"],
          correctAnswer: "الكثافة",
        ),
        examLogic(
          mark: globals.examMarkp,
          theQuestions:
              "علي يمر بك في مركبة فضائية تسير بسرعة عالية. يخبرك أن مركبته الفضائية يبلغ طولها 15.0 مترًا وأن لالمركبة الفضائية المماثلة التي تجلس عليها يبلغ طولها 13.0 مترًا. حسب ملاحظاتك ما هي 'طول' المركبة الفضائية التي يجلس بها علي؟",
          theAnswers: const ["23م", "13م", "15م", "25م"],
          correctAnswer: "13م",
        ),
        examLogic(
          mark: globals.examMarkp,
          theQuestions:
              "عند زيادة سرعة ساعة ما فان الزمن الدقات كما يراه الناظر:",
          theAnswers: const ["لا يتغير", "العطيات غير كافية", "تباطء", "تسارع"],
          correctAnswer: "تباطء",
        ),
        finishExam(
          markSys: 1,
          mark: globals.examMarkp,
        )
      ],
    );
  }
}
