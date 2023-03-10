import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

import '../uiData.dart';

class MyButton extends StatelessWidget {
  final String btnText;
  final VoidCallback onpressed;
  const MyButton({ required Key key, required this.btnText, required this.onpressed}): super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 8,
      height: 40 ,
      child: FlatButton(
        color: UIData.maincolor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        onpressed: onpressed,
        child: Text(btnText,
         style: TextStyle(
          color: Colors.white, 
          fontSize: 15.5, 
          fontWeight: FontWeight.w600),),),);
        
  }
}