import 'package:flutter/material.dart';
import './colors.dart';

TextButton FlatBtn(String text, onPressed) {
  return TextButton(
    style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(primaryColor)),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(color: white),
      ));
  // return FlatButton(
  //   onPressed: onPressed,
  //   child: Text(text),
  //   textColor: white,
  //   color: primaryColor,
  //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
  // );
}

OutlinedButton OutlineBtn(String text, onPressed) {
  return OutlinedButton(
    onPressed: onPressed,
    child: Text(
      text,
      style: const TextStyle(color: primaryColor),
    ),
  );
}
