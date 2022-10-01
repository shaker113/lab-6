import 'package:flutter/material.dart';
import 'package:myapp/customWidget/buttons.dart';

import '../customWidget/text.dart';

class examTab extends StatefulWidget {
  examTab({
    required this.examSubject,
  });
  Widget examSubject;

  @override
  State<examTab> createState() => _examTabState();
}

class _examTabState extends State<examTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              customTextCenter(
                  title:
                      "\n تعليمات الامتحان : \n يرجى عدم الخروج من التطبيق \n  اضغظ سلم الاجابة بعد اجابة كل سؤال "),
              const Divider(height: 20, color: Colors.transparent),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  examButton(examSubject: widget.examSubject),
                  const backButton()
                ],
              ),
            ],
          )),
    );
  }
}
