import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
class MovieCardComponent extends StatelessWidget {
  final String title;
  final String urlImage;
  final int star;

  const MovieCardComponent({Key key, this.title, this.urlImage, this.star}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Image.network(urlImage, width: 130,height: 170,)),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(title, style: TextStyle(fontWeight: FontWeight.w300, fontSize: 13, color: Colors.white),),
        ),
        Padding(
          padding: const EdgeInsets.only(left:8.0),
          child: Wrap(
            spacing: 5,
            children: [
            Icon(Icons.star, color: Colors.yellowAccent, size: 14,),
             Icon(Icons.star, color: Colors.yellowAccent, size: 14),
             Icon(Icons.star, color: Colors.yellowAccent, size: 14),
             Icon(Icons.star, color: Colors.yellowAccent, size: 14),
            Icon(Icons.star, color: Colors.grey, size: 14),
          ],),
        )
      ],
    ),);
  }
}
