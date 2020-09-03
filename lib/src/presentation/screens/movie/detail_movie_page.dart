import 'package:flutter/material.dart';
class DetailMoviePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2C3848),
      body: Column(children: <Widget>[
        Placeholder(fallbackHeight: 320,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
          Text("Aquaman", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),),
            SizedBox()
        ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
          Container(
            padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                borderRadius: BorderRadius.all(Radius.circular(50))
              ),
              child: Text("WATCH NOW", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),)),
          Wrap(
            spacing: 5,
            children: [
              Icon(Icons.star, color: Colors.yellowAccent, size: 14,),
              Icon(Icons.star, color: Colors.yellowAccent, size: 14),
              Icon(Icons.star, color: Colors.yellowAccent, size: 14),
              Icon(Icons.star, color: Colors.yellowAccent, size: 14),
              Icon(Icons.star, color: Colors.grey, size: 14),
            ],)
        ],),
      ],),
    );
  }
}
