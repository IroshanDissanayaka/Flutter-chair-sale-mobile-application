import 'package:badges/badges.dart';
import 'package:chairsaleassignment/models/items.dart';
import 'package:chairsaleassignment/screen/details_screen/detail_screen.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final Item item;
  // final Function press;

  const ItemCard({
    Key key,
    this.item,
    // this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: press,
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsScreen(item: item),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Badge(
            position: BadgePosition.bottomEnd(bottom: -10, end: 20),
            badgeColor: Colors.amber,
            badgeContent: Container(
              width: 20,
              height: 20,
              alignment: Alignment.center,
              child: Text(
                '+',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            child: Container(
              padding: EdgeInsets.all(20),
              height: 180,
              width: 180,
              decoration: BoxDecoration(
                color: item.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: "${item.id}",
                child: Image.asset(item.image),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20 / 4),
            child: Text(
              // products is out demo list
              item.title,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 6, // takes 30% of available width
                  child: Text(
                    item.title2,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Expanded(
                  flex: 4, // takes 70% of available width
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text(
                      "\Rs.${item.price}",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
