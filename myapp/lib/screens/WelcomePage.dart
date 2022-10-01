import 'package:flutter/material.dart';
import 'package:myapp/screens/loginPage.dart';

class welcomePage extends StatefulWidget {
  const welcomePage({super.key});

  @override
  State<welcomePage> createState() => _welcomePageState();
}

class _welcomePageState extends State<welcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          setState(() {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const loginPage();
              },
            ));
          });
        },
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/1.jpg"),
              fit: BoxFit.fitHeight,
            ),
          ),
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              const Divider(
                height: 250,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: const Text(
                  "مرحبا بكم بمنصة الامتحانات ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Cairo',
                      fontSize: 40,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const Divider(
                height: 200,
              ),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: const Text(
                  "اضغط اي مكان للاستمرار",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Cairo',
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
