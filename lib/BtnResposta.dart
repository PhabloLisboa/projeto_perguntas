import 'package:flutter/material.dart';

class BtnResposta extends StatelessWidget {
  final Function() onPressed;
  final text;

  BtnResposta({this.onPressed, this.text = "Button"});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(text),
        onPressed: onPressed,
      ),
    );
  }
}
