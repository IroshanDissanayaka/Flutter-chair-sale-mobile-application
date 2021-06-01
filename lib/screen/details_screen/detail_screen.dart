import 'package:chairsaleassignment/common/component/my_appbar.dart';
import 'package:chairsaleassignment/models/items.dart';
import 'package:chairsaleassignment/screen/details_screen/body.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final Item item;
  const DetailsScreen({Key key, this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(
          title: 'Living Room',
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.black),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: DetailBody(item: item),
      ),
    );
  }
}
