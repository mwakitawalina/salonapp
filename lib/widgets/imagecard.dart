import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:salonapp/widgets/button2.dart';

class Imagecard extends StatefulWidget {
  final String cardImage;
  const Imagecard({ required Key key, required this.cardImage }):super(key: key);

  @override
  State<Imagecard> createState() => _ImagecardState();
}

class _ImagecardState extends State<Imagecard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 8,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),
      image: DecorationImage(colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.darken),
      image: AssetImage(widget.cardImage),
      fit: BoxFit.cover)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("Look Awesome \n & save some", style: TextStyle(color: Colors.white, fontSize: 18)),
        SizedBox(height: 18,),
        MyButton2( btnTxt: "Get upto 50% off", onpressed: (){},)
      ],),
      
    );
  }
}