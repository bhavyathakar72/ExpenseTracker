import 'dart:async';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Startscreen extends StatefulWidget {
  const Startscreen({super.key});

  @override
  State<Startscreen> createState() => _StartscreenState();
}

class _StartscreenState extends State<Startscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Expenses(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = (MediaQuery.of(context).size.width);
    return Scaffold(
      body: width < 600
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 185,
                  ),
                  Center(
                      child: Container(
                          child: Image.asset('assets/images/ETLogo.png'))),
                  SizedBox(
                    height: 155,
                  ),
                  LoadingAnimationWidget.inkDrop(
                      color: Color.fromARGB(255, 44, 123, 171), size: 40)
                ],
              ),
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: Container(
                          child: Image.asset('assets/images/ETLogo.png'))),
                  SizedBox(
                    height: 15,
                  ),
                  LoadingAnimationWidget.inkDrop(color: Colors.purple, size: 40)
                ],
              ),
            ),
    );
  }
}
