// ignore_for_file: must_be_immutable, camel_case_types

import 'package:flutter/material.dart';
import 'package:myapp/customWidget/text.dart';

class information extends StatelessWidget {
  information({required this.theTitle, required this.theSubTitle});
  String theTitle;
  String theSubTitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: customSmallTitle(title: theTitle),
      subtitle: customSmallSubTitle(title: theSubTitle),
    );
  }
}
