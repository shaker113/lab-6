import 'package:flutter/material.dart';

import 'package:myapp/global/global.dart' as globals;

import '../customWidget/text.dart';

class examLogic extends StatefulWidget {
  examLogic(
      {required this.theQuestions,
      required this.theAnswers,
      required this.correctAnswer,
      required this.mark});
  String theQuestions;
  List theAnswers;
  String correctAnswer;
  int mark;

  @override
  State<examLogic> createState() => _examLogicState();
}

class _examLogicState extends State<examLogic> {
  bool disableButton = false;
  String answer = "";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        customTextCenter(
          title: widget.theQuestions,
        ),
        const Divider(
          color: Colors.transparent,
          height: 15,
        ),
        ListView.builder(
          itemCount: 4,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return RadioListTile(
              value: "${widget.theAnswers[index]}",
              title: Text("${widget.theAnswers[index]}"),
              groupValue: answer,
              onChanged: (value) {
                setState(() {
                  answer = value.toString();
                });
              },
            );
          },
        ),
        const Divider(
          height: 10,
          color: Colors.transparent,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.greenAccent[700],
              fixedSize: const Size(120, 20)),
          onPressed: !disableButton
              ? () {
                  setState(() {
                    disableButton = !disableButton;
                    if (answer == "${widget.correctAnswer}") {
                      globals.theMark++;
                    }
                    print(globals.theMark);
                  });
                }
              : null,
          child: const Text(
            textAlign: TextAlign.center,
            "سلم الايجابة",
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Cairo',
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
        ),
        const Divider(
          color: Colors.transparent,
          height: 10,
        ),
      ],
    );
  }
}
