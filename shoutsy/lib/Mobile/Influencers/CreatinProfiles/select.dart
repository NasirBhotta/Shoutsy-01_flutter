import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Select<T> extends StatelessWidget {
  Function(T) callbackAction;
  List<T> list;
  T gender;
  Select(
      {super.key,
      required this.callbackAction,
      required this.gender,
      required this.list});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border:
              Border.all(width: 1, color: Color.fromARGB(255, 103, 103, 103))),
      child: DropdownButton<T>(
        isExpanded: true,
        padding: EdgeInsets.only(left: 10, right: 10),
        value: gender,
        style: TextStyle(),
        underline: SizedBox.shrink(),
        onChanged: (T? value) {
          callbackAction(value!);
        },
        items: list
            .map<DropdownMenuItem<T>>((T e) => DropdownMenuItem(
                  child: e != num ? Text(e as String) : Text("${e}"),
                  value: e,
                ))
            .toList(),
      ),
    );
  }
}
