import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyColumn extends StatelessWidget {
  final String ColumnImg, columnText;
  final Color ColumnBg;
  const MyColumn({required Key key, required this.ColumnBg, required this.ColumnImg, required this.columnText}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: 60,
          height: 60,
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(shape: BoxShape.circle, color: ColumnBg),
          child: Image(image: AssetImage(ColumnImg),fit: BoxFit.contain,),

        ),
        SizedBox(height: 15,),
        Text(columnText),
        SizedBox(height: 10,),
      ],
    );
  }
}