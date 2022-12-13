import 'dart:ui';

import 'package:assignments/Task2Help.dart';
import 'package:flutter/material.dart';
import 'helper.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var uname = TextEditingController();
  var pword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
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
            margin: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
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
                Container(
                  alignment: Alignment.centerRight,
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  child: InkWell(
                    onTap: (() {}),
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                        color: primaryColor,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: primaryColor,
                  ),
                  child: TextButton(
                    onPressed: (() => {
                          print("uname: ${uname.text}\npword: ${pword.text}"),
                          uname.text = "",
                          pword.text = ""
                        }),
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 5),
                  child: const Text("Or sign in with"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/google.png'),
                    Image.asset('assets/images/facebook.png'),
                    Image.asset('assets/images/twitter.png'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account? ",
                      textAlign: TextAlign.center,
                    ),
                    InkWell(
                      onTap: (() {}),
                      child: const Text(
                        "Sign up",
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Sign Up
class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var uname = TextEditingController();
  var pword = TextEditingController();
  var pword2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            fontSize: 30,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Register"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
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
                  child: const Text(
                    "Create your account",
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
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  child: InkWell(
                    onTap: (() {}),
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                        color: primaryColor,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: primaryColor,
                  ),
                  child: TextButton(
                    onPressed: (() => {
                          print("uname: ${uname.text}\npword: ${pword.text}"),
                          if (pword.text == pword2.text)
                            {uname.text = "", pword.text = "", pword2.text = ""}
                        }),
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 5),
                  child: const Text(
                    "Or sign up with",
                    // style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/google.png'),
                    Image.asset('assets/images/facebook.png'),
                    Image.asset('assets/images/twitter.png'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "ALready a member? ",
                      textAlign: TextAlign.center,
                    ),
                    InkWell(
                      onTap: (() {}),
                      child: const Text(
                        "Sign up",
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
