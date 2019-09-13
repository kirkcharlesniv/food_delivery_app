import 'package:flutter/material.dart';

import 'cards/sliding_cards.dart';
import 'cuisine/sliding_cuisine.dart';
import 'recommendations/sliding_recommendations.dart';
import 'restaurants/sliding_popular_restaurants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Home', style: Theme.of(context).textTheme.headline),
              Container(
                  padding: EdgeInsets.all(8),
                  color: Color(0xffF2F8FD),
                  child: Text('78 Quirino Highway',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlue)))
            ],
          ),
        ),
        SlidingCards(),
        SlidingCuisine(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45),
          child: Divider(),
        ),
        SlidingRecommendations(),
        SlidingPopularRestaurants()
      ],
    );
  }
}
