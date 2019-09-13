import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import 'model.dart';

class OrderCard extends StatelessWidget {
  final bool isCanceled;
  final String restaurant;
  final String image;
  final double stars;
  final String dateTime;
  final List<Order> orders;
  final int price;

  const OrderCard(
      {Key key,
      this.restaurant,
      this.dateTime,
      this.orders,
      this.price,
      this.stars,
      this.isCanceled,
      this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: ShaderMask(
                      shaderCallback: (rect) {
                        return LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.transparent, Colors.black],
                        ).createShader(
                            Rect.fromLTRB(0, 0, rect.width, rect.height + 10));
                      },
                      blendMode: BlendMode.darken,
                      child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          child: Image.network(
                            image,
                            fit: BoxFit.cover,
                          )),
                    ),
                  )),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      restaurant,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                    Text(
                      'View Menu'.toUpperCase(),
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 10),
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      (isCanceled)
                          ? LineAwesomeIcons.times_circle_o
                          : LineAwesomeIcons.check_circle_o,
                      size: 20,
                      color: (isCanceled) ? Colors.redAccent : Colors.green,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Order ${(isCanceled) ? 'Canceled' : 'Delivered'}',
                            style: Theme.of(context)
                                .textTheme
                                .display1
                                .copyWith(fontSize: 14)),
                        Text(dateTime,
                            style: Theme.of(context).textTheme.subtitle),
                      ],
                    )
                  ],
                ),
                (!isCanceled)
                    ? SmoothStarRating(
                        allowHalfRating: true,
                        starCount: 5,
                        rating: stars,
                        color: Colors.amber,
                        borderColor: Colors.amberAccent,
                        size: 18,
                      )
                    : Container()
              ],
            ),
          ),
          Column(
            children: orders.map((item) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      color: Colors.grey[200],
                      child: Padding(
                        padding: const EdgeInsets.all(6),
                        child: Text(
                          '${item.quantity.toString()}x',
                          style: Theme.of(context).textTheme.display2,
                        ),
                      ),
                    ),
                    Text(item.item)
                  ],
                ),
              );
            }).toList(),
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('\$${price.toString()}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
              MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    "Reorder",
                    style: TextStyle(),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
