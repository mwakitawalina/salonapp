import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:salonapp/widgets/button.dart';

import '../uiData.dart';

class Intropage extends StatefulWidget {
  const Intropage({super.key});

  @override
  State<Intropage> createState() => _IntropageState();
}

class _IntropageState extends State<Intropage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:(Container(
        padding: EdgeInsets.all(8),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/bandika.jpg",),
              fit: BoxFit.contain)),
              height: MediaQuery.of(context).size.height * 45,
              ),
            Text("Book \n your Favourite Stylist",
             textAlign: TextAlign.center, 
             style: TextStyle(fontSize: 42, 
             fontWeight: FontWeight.w600,
              height: 1.5, 
              letterSpacing: 1.3)),

              Text("Feel Bossy and Classy at pocket-friendly prices",
               textAlign: TextAlign.center,
                style: TextStyle(fontSize: 1.5,
                 letterSpacing: 1.3),),
                 MyButton( btnText: "Get Started", 
                 onpressed: (() => Navigator.pushNamed(context, UIData.homepageRoute)), key: key),

             
          ],
        ),

      ))
    );
  }
}