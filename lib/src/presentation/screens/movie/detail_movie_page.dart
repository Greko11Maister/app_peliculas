import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movieapp/src/presentation/screens/components/actor/actor_component.dart';
class DetailMoviePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2C3848),
      body: Column(children: <Widget>[
        Placeholder(fallbackHeight: 320,),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
            Text("Aquaman", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),),
              SizedBox()
          ],),
        ),
        Padding(
          padding: const EdgeInsets.only(left:30, top: 10,right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
            Container(
              padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.all(Radius.circular(50))
                ),
                child: Text("WATCH NOW", style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.white),)),
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
        ),
        Padding(
          padding: const EdgeInsets.all(30),
          child: Text("In 1985 Maine, lighthouse keeper Thomas Curry rescues Atlanna, the queen of the underwater nation of Atlantis, during a storm. They eventually fall in love and have a son named Arthur, who is born with the power to communicate with marine lifeforms.",
          style: TextStyle(color: Colors.white.withOpacity(0.7), fontSize: 13),
            textAlign: TextAlign.left,
          ),
        ),

        // Actor
        Container(
          height: 110,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, i){
            return ActorComponent(
              avatarUrl: "",
              name: "Jason Momoa",
            );
          }),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30,top: 10, bottom: 8),
          child: Row(children: <Widget>[
            Text("Studio", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: Colors.white),),
            Padding(
              padding: const EdgeInsets.only(left:24),
              child: Text("Warner Bros.", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.white.withOpacity(0.7)),),
            )
          ],),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, bottom: 8),
          child: Row(children: <Widget>[
            Text("Genre", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: Colors.white),),
            Padding(
              padding: const EdgeInsets.only(left:24),
              child: Text("Action, Adventure, Fantasy", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.white.withOpacity(0.7)),),
            )
          ],),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, bottom: 8),
          child: Row(children: <Widget>[
            Text("Release", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: Colors.white),),
            Padding(
              padding: const EdgeInsets.only(left:24),
              child: Text("2018", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.white.withOpacity(0.7)),),
            )
          ],),
        ),
      ],),
    );
  }
}
