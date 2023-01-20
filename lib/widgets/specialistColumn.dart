import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:salonapp/uiData.dart';

class SpecialListColumn extends StatelessWidget {
  final String specImage, specName;
  const SpecialListColumn(
      {required Key key, required this.specImage, required this.specName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              image: DecorationImage(
                  image: AssetImage(specImage), fit: BoxFit.cover)),
        ),
        Container(
          width: 120,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Text(
                specName,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.star,
                    color: UIData.maincolor,
                    size: 14,
                  ),
                  SizedBox(width: 1),
                  Icon(
                    Icons.star,
                    color: UIData.maincolor,
                    size: 14,
                  ),
                  SizedBox(width: 1),
                  Icon(
                    Icons.star,
                    color: UIData.maincolor,
                    size: 14,
                  ),
                  SizedBox(width: 1),
                  Icon(
                    Icons.star,
                    color: UIData.maincolor,
                    size: 14,
                  ),
                  SizedBox(width: 1),
                  Icon(
                    Icons.star,
                    color: UIData.lightcolor,
                    size: 14,
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.phone,
                    size: 15,
                    color: Colors.grey[700],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Expanded(
                      child: Text(
                    "0722264145",
                    style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                  ))
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
