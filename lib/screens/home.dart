import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:salonapp/widgets/Mycolumn.dart';
import 'package:salonapp/widgets/imagecard.dart';
import 'package:salonapp/widgets/specialistColumn.dart';

import '../uiData.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    final screen_size_height = MediaQuery.of(context).size.height;
    final screen_size_width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.short_text,
            color: Colors.black87,
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          Container(
            decoration: BoxDecoration(),
            margin: EdgeInsets.only(
              right: 15,
              top: 15,
            ),
            child: CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage("images/profile.jpg"),
            ),
          ),
        ],
      ),
      //end of AppBar

      body: Container(
        height: screen_size_height,
        width: screen_size_width,
        padding: EdgeInsets.only(right: 16, top: 16, left: 16),
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            Container(
              height: screen_size_height,
              width: screen_size_width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Imagecard(
                    cardImage: "images/knotless.jpg",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Imagecard(cardImage: "images/shortafro.jpg"),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                    child: InkWell(
                  onTap: () =>
                      Navigator.pushNamed(context, UIData.bookpageRoute),
                  child: MyColumn(
                      key: key,
                      ColumnBg: UIData.lightcolor,
                      ColumnImg: "images/fishborn.jpg",
                      columnText: "Ghanian"),
                )),
                Expanded(
                    child: InkWell(
                  onTap: () =>
                      Navigator.pushNamed(context, UIData.bookpageRoute),
                  child: MyColumn(
                    ColumnBg: UIData.lightercolor,
                    columnText: "dreadlocks",
                    ColumnImg: "images/dreadlocks.jpg",
                    key: null,
                  ),
                )),
                Expanded(
                    child: InkWell(
                  onTap: () =>
                      Navigator.pushNamed(context, UIData.bookpageRoute),
                  child: MyColumn(
                      key: key,
                      ColumnBg: UIData.lightercolor,
                      ColumnImg: "images/bandika.jpg",
                      columnText: "Bandikaa"),
                )),
                Expanded(
                    child: InkWell(
                  onTap: () =>
                      Navigator.pushNamed(context, UIData.bookpageRoute),
                  child: MyColumn(
                      key: key,
                      ColumnBg: UIData.lightercolor,
                      ColumnImg: "images/boxbraid.jpg",
                      columnText: "Box braid"),
                )),

                //Second Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Expanded(
                        child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, UIData.bookpageRoute),
                      child: MyColumn(
                          key: key,
                          ColumnBg: UIData.lightercolor,
                          ColumnImg: "images/ghanianlong.jpg",
                          columnText: "Ghanianlong"),
                    )),
                    Expanded(
                        child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, UIData.bookpageRoute),
                      child: MyColumn(
                          key: key,
                          ColumnBg: UIData.lightercolor,
                          ColumnImg: "images/shortafro.jpg",
                          columnText: "Afro"),
                    )),
                    Expanded(
                        child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, UIData.bookpageRoute),
                      child: MyColumn(
                          key: key,
                          ColumnBg: UIData.lightercolor,
                          ColumnImg: "images/knotless.jpg",
                          columnText: "Knotless"),
                    )),
                    Expanded(
                        child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, UIData.bookpageRoute),
                      child: MyColumn(
                          key: key,
                          ColumnBg: UIData.lightercolor,
                          ColumnImg: "images/fishborn.jpg",
                          columnText: "Fishborn"),
                    )),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                            child: Text(
                          "Hair Stylists",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w600),
                        )),
                        FlatButton(
                            onpressed: () {},
                            child: Text(
                              "View All",
                              style: TextStyle(color: Colors.black54),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Container(
                      height: 230,
                      width: screen_size_width,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          SpecialListColumn(
                              key: key,
                              specImage: "images/bandika.jpg",
                              specName: "Dekla Kwamboka"),
                          SizedBox(
                            width: 12,
                          ),
                          SpecialListColumn(
                              key: key,
                              specImage: "images/shortafro.jpg",
                              specName: "Rukia Mohammed"),
                          SizedBox(
                            width: 12,
                          ),
                          SpecialListColumn(
                              key: key,
                              specImage: "images/dreadlocks.jpg",
                              specName: "Ann Njeri"),
                        ],
                      ),
                    )
                  ],
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
