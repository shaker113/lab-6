// ignore_for_file: file_names, must_be_immutable, camel_case_types, use_key_in_widget_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:myapp/customWidget/text.dart';

class subjectTab extends StatefulWidget {
  subjectTab(
      {required this.ImagePath,
      required this.onTap,
      required this.subjectTitle});
  String ImagePath;
  String subjectTitle;
  Widget onTap;
  @override
  State<subjectTab> createState() => _subjectTabState();
}

class _subjectTabState extends State<subjectTab> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return widget.onTap;
            },
          ));
        });
      },
      child: Container(
        height: 140,
        width: 120,
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Container(
              height: 85,
              width: 110,
              margin: const EdgeInsets.only(top: 5, bottom: 5),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.ImagePath), fit: BoxFit.cover),
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20)),
            ),
            customTextCenter(title: widget.subjectTitle),
          ],
        ),
      ),
    );
  }
}
