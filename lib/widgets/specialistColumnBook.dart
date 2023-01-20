import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class SpecialistColumnBook extends StatelessWidget {
  final String specImage, specName;
  const SpecialistColumnBook({required Key key, required this.specImage, required this.specName}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(width: 120, height: 120, 
        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),
        image: DecorationImage(image: AssetImage(specImage), fit: BoxFit.cover)),
        ),
        Container
        (width: 100,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 10,),
          Text(specName, maxLines: 1, overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
          SizedBox(height: 4,),
        ],),
        )
      ],
    );
  }
}