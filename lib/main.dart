import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salonapp/screens/booking.dart';
import 'package:salonapp/screens/home.dart';
import 'package:salonapp/screens/intro.dart';
import 'package:salonapp/uiData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.ubuntuTextTheme(
          Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Intropage(),
      routes: <String, WidgetBuilder>{
        UIData.homepageRoute: (BuildContext context) => Homepage(),
        UIData.intropageRoute: (BuildContext context) => Intropage(),
        UIData.bookpageRoute: (BuildContext context) => Bookpage(),
      }
    );
  }
}
