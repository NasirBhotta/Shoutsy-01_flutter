import 'package:flutter/material.dart';

class FieldForm extends StatelessWidget {
  final lableText;

  const FieldForm({super.key, required this.lableText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          labelText: lableText,
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
              borderRadius: BorderRadius.circular(10))),
    );
  }
}
