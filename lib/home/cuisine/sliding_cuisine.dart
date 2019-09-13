import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

import 'slide_cuisine.dart';

class SlidingCuisine extends StatelessWidget {
  List<Widget> listIcons = [
    SlideCuisine(
      icon: LineAwesomeIcons.yelp,
      cuisine: 'Top Foods',
    ),
    SlideCuisine(
      icon: LineAwesomeIcons.beer,
      cuisine: 'Beverages',
    ),
    SlideCuisine(
      icon: LineAwesomeIcons.leaf,
      cuisine: 'Vegan',
    ),
    SlideCuisine(
      icon: LineAwesomeIcons.lemon_o,
      cuisine: 'Asian',
    ),
    SlideCuisine(
      icon: LineAwesomeIcons.cutlery,
      cuisine: 'Fine Dining',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.14,
        child: Center(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: listIcons,
          ),
        ),
      ),
    );
  }
}
