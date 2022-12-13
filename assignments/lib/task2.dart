import 'package:assignments/Task2Help.dart';
import 'package:flutter/material.dart';
import 'helper.dart';

class AssignmentThree extends StatefulWidget {
  const AssignmentThree({super.key});

  @override
  State<AssignmentThree> createState() => _AssignmentThreeState();
}

class _AssignmentThreeState extends State<AssignmentThree> {
  var uname = TextEditingController();
  var pword = TextEditingController();
  var pword2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: primaryColor,
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            fontSize: 30,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Login"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: my_padding,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset('assets/images/logo.png'),
                      ),
                      const Text(
                        "Orange Scribe",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 10,
                          color: primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.all(20),
                  child: const Text(
                    "Login to your account",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                MyTextField(uname, "Email"),
                MyPasswordField(pword, "Password"),
                MyPasswordField(pword2, "Password"),
                Container(
                  alignment: Alignment.centerRight,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: primaryColor,
                    ),
                  ),
                ),
                Container(
                  margin: my_padding,
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: primaryColor,
                  ),
                  child: TextButton(
                    onPressed: (() => {
                          print("uname: ${uname.text}\npword: ${pword.text}"),
                          uname.text = "",
                          pword.text = "",
                          pword2.text = ""
                        }),
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
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
