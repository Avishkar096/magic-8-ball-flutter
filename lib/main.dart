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
  int variableimage = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: Center(child: const Text('Magic 8 Ball')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Ask Anything that you want' ,style: TextStyle(
              color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25
            ),),
            TextButton(
              onPressed: () {
                setState(
                  () {
                    variableimage = Random().nextInt(5) + 1;
                  },
                );
              },
              child: Image(
                image: AssetImage('images/ball$variableimage.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
