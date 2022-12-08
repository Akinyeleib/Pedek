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
      debugShowCheckedModeBanner: false,
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
          title: Text("AssignmentTwo"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: my_padding,
                  // child: Container(
                  //   width: 150,
                  //   height: 150,
                  child: Image.asset('assets/images/akinyeleib.jpg'),
                  // ),
                ),
                Padding(
                  padding: my_padding,
                  child: MyTextField(uname, "Email"),
                ),
                Padding(
                  padding: my_padding,
                  child: MyPasswordField(pword, "Password"),
                ),
                ElevatedButton(
                  child: Text("Login"),
                  onPressed: (() => {
                        print(
                          "uname: ${uname.text}\npword: ${pword.text}",
                        ),
                        uname.text = "",
                        pword.text = ""
                      }),
                )
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
