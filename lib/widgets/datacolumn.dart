// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Datecolum extends StatelessWidget {
  final String WeekDay, Date ;
  final Color DateBg, DateTextColor;
  const Datecolum({required Key Key, required this.WeekDay, required this.Date, required this.DateBg, required this.DateTextColor}):super(key: Key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(WeekDay,style:TextStyle(color:Colors.white)),
        SizedBox(height: 15,),
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: DateBg, 
            borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Text(Date, style:TextStyle(color:DateTextColor))),
      ],
    );
  }
}