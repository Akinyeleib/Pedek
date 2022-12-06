import 'package:flutter/material.dart';
import 'helper.dart';

class AssignmentTwo extends StatefulWidget {
  const AssignmentTwo({super.key});

  @override
  State<AssignmentTwo> createState() => _AssignmentTwoState();
}

class _AssignmentTwoState extends State<AssignmentTwo> {
  var uname = TextEditingController();
  var pword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        textTheme: TextTheme(
          bodyText1: TextStyle(
            fontSize: 30,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "AssignmentTwo",
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MyTextField(uname, "UserName"),
              MyPasswordField(pword, "Password"),
              MyElevatedButton("Login"),
            ],
          ),
        ),
      ),
    );
  }
}

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
          child: Text(
            "Hi",
          ),
          hoverColor: Colors.indigo.shade900,
          backgroundColor: Colors.amber,
          foregroundColor: Colors.black,
          splashColor: Colors.purple.shade900,
        ),
      ),
    );
  }

  void clicked() {
    click++;
    String freq = click < 2 ? 'time' : 'times';
    print('Button Clicked... ${click} $freq');
  }
}
