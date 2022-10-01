import 'package:flutter/material.dart';
import 'package:myapp/customWidget/customDrawer.dart';
import '../customWidget/mainTabWidgets.dart';
import '../customWidget/text.dart';

class mainPage extends StatefulWidget {
  const mainPage({super.key});

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          drawer: const CustomDrawer(),
          appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.greenAccent.shade700,
              title: TabBar(
                indicatorColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  customTextCenter(title: "الامتحانات"),
                  customTextCenter(title: "العلامات")
                ],
              )),
          body: TabBarView(
            children: [const examsTabBar(), gradsTabBar()],
          )),
    );
  }
}
