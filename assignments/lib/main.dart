import 'package:flutter/material.dart';

void main() => runApp(AssignmentOne());

class AssignmentOne extends StatelessWidget {
  int click = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter"),
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            "My First Flutter app\n Thanks Chief",
            textAlign: TextAlign.center,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: clicked,
          child: const Text("Hi"),
          // backgroundColor: Colors.amber,
        ),
      ),
    );
  }

  void clicked() {
    click++;
    print('Button Clicked... ${click} times');
  }
}
