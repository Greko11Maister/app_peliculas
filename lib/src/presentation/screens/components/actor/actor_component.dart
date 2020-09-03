import 'package:flutter/material.dart';

class ActorComponent extends StatelessWidget {
  final String avatarUrl;
  final String name;

  const ActorComponent({Key key, this.avatarUrl, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30),
      constraints: BoxConstraints(maxHeight: 90, maxWidth: 50),
      child: Column(
        children: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage(avatarUrl),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              name,
              style: Theme.of(context).textTheme.headline1.copyWith(
                fontSize: 13,
                color: Theme.of(context).textTheme.headline1.color.withOpacity(0.7)
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
