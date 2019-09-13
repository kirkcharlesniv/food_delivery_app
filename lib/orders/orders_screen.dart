import 'package:flutter/material.dart';

import 'model.dart';
import 'order_card.dart';

class OrdersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text('Orders', style: Theme.of(context).textTheme.headline),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: <Widget>[
              OrderCard(
                isCanceled: false,
                restaurant: "McDonald's",
                image:
                    'https://i2.wp.com/www.eatthis.com/wp-content/uploads/2018/05/mcdonalds-burger-fries-soda.jpg?fit=500%2C366&ssl=1',
                stars: 4,
                dateTime: "Today at 4:30 PM",
                orders: [
                  Order(2, 'Big Mac'),
                  Order(3, 'World Famous Fries'),
                  Order(1, 'McChicken'),
                ],
                price: 41,
              ),
              OrderCard(
                isCanceled: true,
                restaurant: "Jollibee",
                image:
                    'https://sa.kapamilya.com/absnews/abscbnnews/media/2018/business/12/21/20181221-jollibee1.jpg',
                dateTime: "Today at 4:30 PM",
                orders: [
                  Order(1, 'Crispylicious Chickenjoy with Spaghetti'),
                  Order(2, 'Extra Rice'),
                ],
                price: 39,
              ),
            ],
          ),
        )
      ],
    );
  }
}
