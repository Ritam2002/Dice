import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var n = Random();
  int num = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(96, 233, 95, 95),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    num = n.nextInt(6) + 1;
                  });
                },
                child: Container(
                  child: Image.asset(
                    'Images/${num}.png',
                    width: 300,
                    height: 200,
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Tap on dice',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'You got: ${num}',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
