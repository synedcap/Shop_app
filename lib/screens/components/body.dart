
import 'package:flutter/material.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/screens/components/details/detail_screen.dart';

import 'categories.dart';
import 'item_card.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: KDefaultPaddin),
            child: Text(
              "Women",
              style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.bold),),
          ),
        Categories(),
        Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: KDefaultPaddin),
              child: GridView.builder(
                itemCount: products.length,
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: KDefaultPaddin,
                      crossAxisSpacing: KDefaultPaddin,
                      childAspectRatio: 0.75
                  ),
                  itemBuilder: (context,index)=> ItemCard(
                    product: products[index],
                    press: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DetailScreen(product: products[index],)
                        )),
                  )
              ),
            ),
        ),

      ],
    );
  }
}




