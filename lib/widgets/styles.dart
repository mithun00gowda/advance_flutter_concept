import 'package:flutter/material.dart';

class Styles {
  static ButtonStyle btnStyle = ButtonStyle(
      backgroundColor: WidgetStateProperty.all(Colors.white),
      textStyle: WidgetStateProperty.all(
        TextStyle(
            color: Colors.black,
            fontSize: 20
        ),
      ),
      shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          )
      )
  );
}