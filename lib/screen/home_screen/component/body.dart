import 'package:chairsaleassignment/models/items.dart';
import 'package:chairsaleassignment/screen/home_screen/component/categories.dart';
import 'package:chairsaleassignment/screen/home_screen/component/item_card.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Category(),
        Expanded(
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0, 0, 0),
            child: GridView.builder(
                itemCount: items.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                      item: items[index],
                      // press: () => Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => DetailsScreen(
                      //         item: items[index],
                      //       ),
                      //     )),
                    )),
          ),
        )
      ],
    );
  }
}
