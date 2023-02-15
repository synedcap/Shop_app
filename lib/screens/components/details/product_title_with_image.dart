

import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../models/product.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product? product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  <Widget>[
          const Text("Aristocratic Hand Bag",
            style: TextStyle(color: Colors.white ),
          ),
          Text(
            product!.title,
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(color: Colors.white,fontWeight: FontWeight.bold),
          ),

          SizedBox(height: KDefaultPaddin,),
          Row(
            children: <Widget>[
              RichText(
                  text: TextSpan(
                    children: [
                      // TextSpan(text: "Price\n"),
                      TextSpan(
                        text: "\$${product!.price}",
                        style: Theme.of(context)
                            .textTheme
                            .headline2
                            ?.copyWith(color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
              ),
              SizedBox(width: KDefaultPaddin,),
              Expanded(
                  child: Image.asset(
                    product!.image,
                    fit: BoxFit.fill,
                  )
              )
            ],
          )
        ],
      ),
    );
  }
}