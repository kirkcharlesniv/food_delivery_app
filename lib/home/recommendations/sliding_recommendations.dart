import 'package:flutter/material.dart';

import 'slide_recommendations.dart';

class SlidingRecommendations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> listRecommendations = [
      SlideRecommendation(
        cardImage:
            'https://img.buzzfeed.com/thumbnailer-prod-us-east-1/dc23cd051d2249a5903d25faf8eeee4c/BFV36537_CC2017_2IngredintDough4Ways-FB.jpg',
        waitingTime: '10-15 minutes',
        food: 'Pepperoni Pizza',
        price: '\$5.45',
        place: 'Pizza Hut',
      ),
      SlideRecommendation(
        cardImage:
            'https://sa.kapamilya.com/absnews/abscbnnews/media/2018/business/12/21/20181221-jollibee1.jpg',
        waitingTime: '15 minutes',
        food: 'Chicken and Spaghetti',
        price: '\$3.99',
        place: 'Jollibee',
      ),
      SlideRecommendation(
        cardImage:
            'https://amp.businessinsider.com/images/5c0990b1d5000c07f77ba114-750-563.jpg',
        waitingTime: '15-20 minutes',
        food: '\$6 King Box',
        price: '\$6.00',
        place: 'Burger King',
      ),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Find your perfect dinner',
                  style: Theme.of(context).textTheme.display3),
              Text('See All', style: Theme.of(context).textTheme.subhead)
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 16),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.245,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: listRecommendations,
              ),
            ),
          )
        ],
      ),
    );
  }
}
