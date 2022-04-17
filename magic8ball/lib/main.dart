import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          centerTitle: true, // Needed for web
          title: Text(
            'Ask me a Yes or No Question',
            style: GoogleFonts.anton(
              textStyle: const TextStyle(
                color: Colors.white,
                letterSpacing: 1.0,
              ),
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int magicResponse = 6;
  void regenMagicResponse() {
    magicResponse = Random().nextInt(5) + 1;
    //print('Response is $magicResponse');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  regenMagicResponse();
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('images/ball$magicResponse.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
