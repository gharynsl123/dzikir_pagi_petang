import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

goBack(BuildContext context) {
  Navigator.pop(context);
}

Widget barDaily() {
  return AppBar(
    title: Padding(
      padding: const EdgeInsets.only(left: 80.0),
      child: Row(
        children: <Widget>[
          Text(
            "Daily",
            style: TextStyle(color: Color(0xff00ebe3), fontWeight: FontWeight.w600),
          ),
          Text(
            "Prayer",
            style:
            TextStyle(color: Color(0xffebebeb), fontWeight: FontWeight.w600),
          )
        ],
      ),
    ),
    backgroundColor: Color(0xff0758FF),
    elevation: 0.0,
  );
}
