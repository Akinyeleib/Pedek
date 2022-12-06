import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  var control;
  var hint;
  MyTextField(this.control, this.hint);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: control,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
          icon: Icon(Icons.input),
          border: OutlineInputBorder(),
          hintText: hint),
    );
  }
}

class MyPasswordField extends StatelessWidget {
  var control;
  var hint;
  MyPasswordField(this.control, this.hint);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: control,
      obscureText: true,
      obscuringCharacter: "*",
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        icon: Icon(Icons.input),
        border: OutlineInputBorder(),
        hintText: hint,
      ),
    );
  }
}
