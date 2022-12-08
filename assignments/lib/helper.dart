import 'package:flutter/material.dart';

var my_padding = EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 30);

class MyTextField extends StatelessWidget {
  TextEditingController control;
  String hint;
  MyTextField(this.control, this.hint);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: control,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.email_outlined),
        border: OutlineInputBorder(),
        labelText: hint,
        hintText: hint,
      ),
    );
  }
}

class MyPasswordField extends StatefulWidget {
  TextEditingController control;
  String hint;

  MyPasswordField(this.control, this.hint);

  @override
  State<MyPasswordField> createState() => _MyPasswordFieldState();
}

class _MyPasswordFieldState extends State<MyPasswordField> {
  bool show = false;

  Icon visible = Icon(Icons.visibility_off);
  Icon not_visible = Icon(Icons.visibility);
  Icon my_icon = Icon(Icons.visibility_off);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.control,
      obscureText: show,
      obscuringCharacter: "*",
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.password_rounded),
        border: OutlineInputBorder(),
        labelText: widget.hint,
        hintText: widget.hint,
        suffix: InkWell(
          onTap: toggle,
          child: my_icon,
        ),
      ),
    );
  }

  void toggle() {
    setState(
      () {
        if (show) {
          my_icon = Icon(Icons.visibility_off);
        } else {
          my_icon = Icon(Icons.visibility);
        }
        show = !show;
      },
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
