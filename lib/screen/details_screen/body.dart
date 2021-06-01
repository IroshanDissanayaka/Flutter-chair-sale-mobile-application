import 'dart:ui';
import 'package:badges/badges.dart';
import 'package:chairsaleassignment/models/items.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailBody extends StatelessWidget {
  final Item item;
  const DetailBody({Key key, this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
            child: Column(
          children: [
            bodyPart1(item),
            startRating,
            title(item),
            title2(item),
            description(item),
            bottomBar(item),
          ],
        ))
      ],
    );
  }
}

final bodyPart1 = (item) => Container(
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Container(
            // padding: EdgeInsets.all(20),
            height: 350,
            width: 350,
            decoration: BoxDecoration(
              color: item.color,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Hero(
              tag: "${item.id}",
              child: Image.asset(item.image),
            ),
          ),
          Positioned(
            right: 40,
            bottom: -15,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Badge(
                  badgeContent: Icon(
                    Icons.favorite_rounded,
                    color: Colors.white,
                  ),
                  // child: Icon(Icons.settings),
                  badgeColor: Colors.amber,
                ),
                SizedBox(
                  width: 10,
                ),
                Badge(
                  badgeContent: Icon(
                    Icons.close_outlined,
                    color: Colors.white,
                  ),
                  // child: Icon(Icons.settings),
                  badgeColor: Colors.amber,
                ),
              ],
            ),
          ),
        ],
      ),
    );

final title = (item) => Container(
        child: Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Container(
          child: Text(
            item.title,
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
        ),
      ),
    ));
final title2 = (item) => Container(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Container(
            child: Text(
              item.title2,
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
        ),
      ),
    );

final description = (item) => Container(
        child: Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Container(
            child: Text(
              item.description,
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
          ),
        ),
      ),
    ));

final bottomBar = (item) => Container(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            '\Rs.${item.price}',
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Spacer(flex: 1),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: BorderSide(width: 2, color: Colors.grey),
            ),
            onPressed: () {},
            child: Text('Add to Cart', style: TextStyle(color: Colors.black)),
          ),
          SizedBox(width: 16),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.amber, // background
              onPrimary: Colors.white, // foreground
            ),
            onPressed: () {},
            child: Text('Buy Now'),
          ),
        ],
      ),
    ));
final startRating = Container(
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        Text('Rating'),
        MyStarRatingBar(),
      ],
    ),
  ),
);

class MyStarRatingBar extends StatefulWidget {
  @override
  _MyStarRatingBarState createState() => _MyStarRatingBarState();
}

class _MyStarRatingBarState extends State<MyStarRatingBar> {
  var rating = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SmoothStarRating(
        color: Colors.amber,
        borderColor: Colors.amber,
        rating: rating,
        isReadOnly: false,
        size: 30,
        filledIconData: Icons.star,
        halfFilledIconData: Icons.star_half,
        defaultIconData: Icons.star_border,
        starCount: 5,
        allowHalfRating: false,
        spacing: 2.0,
        onRated: (value) {
          print("rating value -> $value");
        },
      ),
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   return Container();
  // }
}
