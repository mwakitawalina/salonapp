

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../uiData.dart';

class MyButton2 extends StatelessWidget {
   final String btnTxt;
    final VoidCallback onpressed;
  const MyButton2({ required Key key, required this.btnTxt, required this.onpressed}): super(key:key);

  @override
  Widget build(BuildContext context) {
   
    return Container(
      height: 30,
      child: FlatButton(
        color: UIData.maincolor,
        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        onpressed:onpressed,
        child:Text(btnTxt, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),)
      ),
    );
  }
}