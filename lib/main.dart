import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(0, 184, 183, 183),
        appBar: AppBar(
          title: const Center(
            child: Text(
              'EQUAL NUMBERS',
              style: TextStyle(
                  color: Color.fromARGB(255, 205, 205, 205),
                  fontWeight: FontWeight.bold,
                  fontSize: 28),
            ),
          ),
        ),
        body: const Equal(),
      ),
    );
  }
}

class Equal extends StatefulWidget {
  const Equal({super.key});

  @override
  State<Equal> createState() => _EqualState();
}

class _EqualState extends State<Equal> {
  int num1 = 0;
  int num2 = 1;
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Text(
        num1 == num2
            ? 'VERY GOOD\ntry again'
            : num1 == 0 && num2 == 1
                ? 'START'
                : 'TRY AGAIN',
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
      Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: GestureDetector(
                  onTap: () {
                    setState(() {
                      num1 = Random().nextInt(10);
                    });
                  },
                  child: Image.asset('assets/number-$num1.png')),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Image.asset('assets/equal.png'),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: InkWell(
                  onTap: () {
                    setState(() {
                      num2 = Random().nextInt(10);
                    });
                  },
                  child: Image.asset('assets/number-$num2.png')),
            ),
          ),
        ],
      ),
    ]);
  }
}
