import 'package:badges/badges.dart';
import 'package:chairsaleassignment/common/component/my_appbar.dart';
import 'package:chairsaleassignment/screen/home_screen/component/body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Discover",
        actions: [
          IconButton(
              icon: const Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
              ),
              onPressed: () {}),
          Badge(
            badgeContent: Text('3'),
            child: Icon(Icons.shopping_bag_outlined),
            position: BadgePosition.topEnd(top: 10, end: 28),
            badgeColor: Colors.yellow[600],
          ),
        ],
      ),
      body: Body(),
    );
  }
}
