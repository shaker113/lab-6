import 'package:flutter/material.dart';

class examPage extends StatefulWidget {
  examPage({required this.examSubject});
  Widget examSubject;
  @override
  State<examPage> createState() => _examPageState();
}

class _examPageState extends State<examPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.redAccent.shade400,
          Colors.purple.shade400,
          Colors.blueAccent.shade200,
          Colors.greenAccent.shade400,
          Colors.green.shade700,
        ], begin: Alignment.bottomRight, end: Alignment.topLeft)),
        padding:
            const EdgeInsets.only(top: 80, bottom: 20, left: 20, right: 20),
        child: Container(
          // padding: EdgeInsets.all(14),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: widget.examSubject,
        ),
      ),
    );
  }
}
