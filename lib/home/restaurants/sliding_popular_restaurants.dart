import 'package:flutter/material.dart';

import 'slide_restaurants.dart';

class SlidingPopularRestaurants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> listRestaurants = [
      SlideRestaurants(
        restaurant: 'Mr. Grill',
        description: 'American, B-B-Q, Burgers, Hotdogs.',
        stars: 4,
        rateCounts: 240,
        price: '\$\$',
        restaurantImage: 'https://lasoon.net/photo/id_198635.png',
      ),
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Popular restaurants',
                  style: Theme.of(context).textTheme.display3),
              Text('See All', style: Theme.of(context).textTheme.subhead)
            ],
          ),
          Container(
            child: ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: listRestaurants,
            ),
          )
        ],
      ),
    );
  }
}
