import 'package:flutter/material.dart';
import 'package:myapp/customWidget/text.dart';
import 'package:myapp/examTab/examTab.dart';
import 'package:myapp/examWidget/examWidget.dart';

import '../examWidget/chemestryExamWidget.dart';
import 'package:myapp/global/global.dart' as globals;
import '../examWidget/mathExamWidget .dart';
import '../examWidget/physicsExamWidget.dart';
import 'customTab.dart';

class examsTabBar extends StatelessWidget {
  const examsTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      const Divider(height: 10, color: Colors.transparent),
      customTextCenter(title: "مادة الامتحان"),
      const Divider(height: 20, color: Colors.transparent),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              subjectTab(
                  ImagePath: "images/2.jpg",
                  subjectTitle: "الوطنية",
                  onTap: examTab(
                    examSubject: const examWidget(),
                  )),
              const Divider(height: 20, color: Colors.transparent),
              subjectTab(
                  ImagePath: "images/4.jpg",
                  subjectTitle: "الرياضيات",
                  onTap: examTab(
                    examSubject: const mathExamWidget(),
                  )),
            ],
          ),
          Column(
            children: [
              subjectTab(
                  ImagePath: "images/3.jpg",
                  subjectTitle: "الفيزياء",
                  onTap: examTab(
                    examSubject: const physicsexamWidget(),
                  )),
              const Divider(height: 20, color: Colors.transparent),
              subjectTab(
                  ImagePath: "images/5.jpg",
                  subjectTitle: "الكيمياء",
                  onTap: examTab(
                    examSubject: const chemestryexamWidget(),
                  )),
            ],
          ),
        ],
      ),
    ]);
  }
}

class gradsTabBar extends StatelessWidget {
  gradsTabBar({super.key});
  List subjectName = ["الوطنية", "الفيزياء", "الكيمياء", "الرياضيات"];
  List subjectGrade = [
    globals.examMark,
    globals.examMarkp,
    globals.examMarkc,
    globals.examMarkm
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return customTextRight(
              title:
                  "علامة اختبار ${subjectName[index]} :${subjectGrade[index]}");
        },
      ),
    );
  }
}
