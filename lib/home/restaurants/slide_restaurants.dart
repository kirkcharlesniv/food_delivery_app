import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class SlideRestaurants extends StatelessWidget {
  final String restaurant;
  final String description;
  final double stars;
  final int rateCounts;
  final String price;
  final String restaurantImage;

  const SlideRestaurants(
      {Key key,
      this.restaurant,
      this.description,
      this.stars,
      this.rateCounts,
      this.price,
      this.restaurantImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(restaurant,
                        style: Theme.of(context).textTheme.display1),
                    Text(description,
                        style: Theme.of(context).textTheme.subtitle),
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          color: Colors.grey[200],
                          child: Padding(
                            padding: const EdgeInsets.all(6),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  LineAwesomeIcons.star,
                                  color: Colors.amber,
                                  size: 13.5,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '${stars.toString()} (${rateCounts.toString()}+)',
                                  style: Theme.of(context).textTheme.display2,
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15, left: 7.5),
                          color: Colors.grey[200],
                          child: Padding(
                            padding: const EdgeInsets.all(6),
                            child: Text(
                              price,
                              style: Theme.of(context).textTheme.display2,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Image.network(restaurantImage),
            )
          ],
        ),
      ),
    );
  }
}
