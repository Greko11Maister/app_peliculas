import 'package:flutter/material.dart';
class SearchComponent extends StatefulWidget {
  final ValueChanged<String> onChanged;

  const SearchComponent({Key key, this.onChanged}) : super(key: key);
  @override
  _SearchComponentState createState() => _SearchComponentState();
}

class _SearchComponentState extends State<SearchComponent> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        prefixIcon: Icon(Icons.search, color: Theme.of(context).textTheme.headline1.color,),
        fillColor: Theme.of(context).textTheme.headline1.color.withOpacity(0.2),
        contentPadding: EdgeInsets.all(2),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            borderSide: BorderSide(
                color: Colors.transparent,
                width: 5.0
            )
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            borderSide: BorderSide(
                color: Colors.transparent,
                width: 5.0
            )
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            borderSide: BorderSide(
                color: Colors.transparent,
                width: 5.0
            )
        ),
      ),
      onChanged: widget.onChanged
    );
  }
}
