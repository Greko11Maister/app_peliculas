import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
class MovieCardComponent extends StatelessWidget {
  final String title;
  final String urlImage;
  final int star;
  final VoidCallback onTap;
  final double voteAverage;

  const MovieCardComponent({Key key, this.title, this.urlImage, this.star, this.onTap, this.voteAverage = 0}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Image.network(urlImage, width: 130,height: 170,)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title,
                    style: Theme.of(context).textTheme.headline1.copyWith(
                    fontSize: 13,
                    fontWeight: FontWeight.w400),),
          ),
          Padding(
            padding: const EdgeInsets.only(left:8.0),
            child: Wrap(
              spacing: 5,
              children: [
              Icon(Icons.star, color: voteAverage > 1 ? Colors.yellowAccent :Colors.grey, size: 14,),
               Icon(Icons.star, color: voteAverage > 2 ? Colors.yellowAccent :Colors.grey, size: 14),
               Icon(Icons.star, color: voteAverage > 3 ? Colors.yellowAccent :Colors.grey, size: 14),
               Icon(Icons.star, color: voteAverage > 4 ? Colors.yellowAccent :Colors.grey, size: 14),
              Icon(Icons.star, color: voteAverage > 5 ? Colors.yellowAccent :Colors.grey, size: 14),
            ],),
          )
        ],
      ),),
    );
  }
}
