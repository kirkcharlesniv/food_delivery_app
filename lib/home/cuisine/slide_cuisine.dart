import 'package:flutter/material.dart';

class SlideCuisine extends StatelessWidget {
  final IconData icon;
  final String cuisine;

  const SlideCuisine({Key key, this.icon, this.cuisine}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
          decoration: new BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: new Icon(
              icon,
              size: 35,
              color: Colors.lightBlueAccent,
            ),
          ),
        ),
        Text(
          cuisine,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
        )
      ],
    );
  }
}
