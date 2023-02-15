import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../models/product.dart';

class ItemCard extends StatelessWidget {

  Product? product;
  var press;

  ItemCard({
    Key? key,
    this.press,
    this.product
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(KDefaultPaddin),
              //height: 180,
              //width: 160,
              decoration: BoxDecoration(
                color: product!.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child:  Image.asset(product!.image ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: KDefaultPaddin / 4),
            child: Text(
              product!.title,
              style: TextStyle(color: KTextLightColor),),
          ),
          Text(
            "\$${product!.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}