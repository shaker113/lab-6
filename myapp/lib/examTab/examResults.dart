import 'package:flutter/material.dart';
import 'package:myapp/customWidget/text.dart';

class examResults extends StatefulWidget {
  examResults({required this.mark});
  int mark;

  @override
  State<examResults> createState() => _examResultsState();
}

class _examResultsState extends State<examResults> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          customTextCenter(title: "علامة الامتحان هي :${widget.mark}"),
          const Divider(
            height: 60,
            color: Colors.transparent,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent[700],
                  fixedSize: const Size(240, 40)),
              onPressed: () {
                setState(() {
                  Navigator.of(context)
                      .popUntil(ModalRoute.withName("mainPage"));
                });
              },
              child: customTextCenter(
                title: "العودة للصفة الرئيسية",
              ))
        ],
      ),
    );
  }
}
