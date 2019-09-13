import 'package:flutter/material.dart';

import 'dots_indicator.dart';
import 'slide_card.dart';

class SlidingCards extends StatefulWidget {
  @override
  _SlidingCardsState createState() => _SlidingCardsState();
}

class _SlidingCardsState extends State<SlidingCards> {
  PageController pageController;
  double pageOffset = 0;
  static const _kDuration = const Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;

  @override
  void initState() {
    super.initState();
    pageController = PageController(viewportFraction: 0.90);
    pageController.addListener(() {
      setState(() => pageOffset = pageController.page);
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> listWidget = [
      SlideCard(
        backdrop: 'https://www.rd.com/wp-content/uploads/2019/01/mcdonalds.jpg',
        logo: 'assets/brands/mcdonalds.png',
        subtitle: 'New Deal',
        header: "Buy One, Get One for \$1 Deal",
      ),
      SlideCard(
          backdrop:
              'https://www.mcdelivery.com.ph/uploads/images//FreeDeliverySpicyChicken960X300Aug25.jpg',
          logo: 'assets/brands/mcdonalds.png',
          subtitle: 'New Deal',
          header: "McDonald's New Spicy Chicken McDo"),
      SlideCard(
          backdrop:
              'https://www.mcdelivery.com.ph/uploads/images//MegaMeals960X300[2]-V1.jpg',
          logo: 'assets/brands/mcdonalds.png',
          subtitle: 'MegaMEALS',
          header: "Mega sulit, mega sarap!"),
    ];

    return Column(
      children: <Widget>[
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.275,
          child: PageView(
            controller: pageController,
            children: listWidget,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: new Center(
            child: new DotsIndicator(
              controller: pageController,
              itemCount: listWidget.length,
              onPageSelected: (int page) {
                pageController.animateToPage(
                  page,
                  duration: _kDuration,
                  curve: _kCurve,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
