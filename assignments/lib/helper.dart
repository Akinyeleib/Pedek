import 'package:flutter/material.dart';

var my_padding = EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 30);

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
          icon: Icon(Icons.email_outlined),
          border: OutlineInputBorder(),
          labelText: hint,
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
        icon: Icon(Icons.password_rounded),
        border: OutlineInputBorder(),
        labelText: hint,
        hintText: hint,
      ),
    );
  }
}

class MyElevatedButton extends StatelessWidget {
  var text;
  MyElevatedButton(this.text);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(text),
      onPressed: (() => {}),
    );
  }
}
