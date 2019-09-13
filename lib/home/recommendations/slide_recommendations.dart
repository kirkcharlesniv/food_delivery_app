import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class SlideRecommendation extends StatefulWidget {
  final String cardImage;
  final String waitingTime;
  final String food;
  final String price;
  final String place;

  const SlideRecommendation(
      {Key key,
      this.cardImage,
      this.waitingTime,
      this.food,
      this.price,
      this.place})
      : super(key: key);

  @override
  _SlideRecommendationState createState() => _SlideRecommendationState();
}

class _SlideRecommendationState extends State<SlideRecommendation> {
  bool isHeart = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      child: Card(
        elevation: 4,
        margin: EdgeInsets.only(left: 8, right: 8, bottom: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(4)),
                  child: Image.network(
                    widget.cardImage,
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.15,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(360),
                                right: Radius.circular(360))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                LineAwesomeIcons.hourglass_half,
                                color: Colors.blue,
                                size: 18,
                              ),
                              Text(
                                widget.waitingTime,
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            isHeart = !isHeart;
                          });
                        },
                        icon: Icon(
                          (isHeart)
                              ? LineAwesomeIcons.heart
                              : LineAwesomeIcons.heart_o,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(widget.food,
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 14)),
                      Text(widget.price,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15))
                    ],
                  ),
                  Text(widget.place,
                      style: Theme.of(context).textTheme.subtitle)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
