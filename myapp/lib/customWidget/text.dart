import 'package:flutter/material.dart';

class customTextCenter extends StatelessWidget {
  customTextCenter({required this.title});
  String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: const TextStyle(
          color: Colors.black,
          fontFamily: 'Cairo',
          fontSize: 22,
          fontWeight: FontWeight.w500),
    );
  }
}

class customSmallTitle extends StatelessWidget {
  customSmallTitle({required this.title});
  String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: const TextStyle(
          color: Colors.black,
          fontFamily: 'Cairo',
          fontSize: 17,
          fontWeight: FontWeight.w500),
    );
  }
}

class customSmallSubTitle extends StatelessWidget {
  customSmallSubTitle({required this.title});
  String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: const TextStyle(
          color: Colors.black,
          fontFamily: 'Cairo',
          fontSize: 14,
          fontWeight: FontWeight.w500),
    );
  }
}

class customTextRight extends StatelessWidget {
  customTextRight({required this.title});
  String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.end,
      style: const TextStyle(
          color: Colors.black,
          fontFamily: 'Cairo',
          fontSize: 22,
          fontWeight: FontWeight.w500),
    );
  }
}
