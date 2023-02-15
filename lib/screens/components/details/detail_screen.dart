import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/screens/components/details/body.dart';

import '../../../constant.dart';
import '../../../models/product.dart';

class DetailScreen extends StatelessWidget {

  Product? product;
  DetailScreen({Key? key,this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product!.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product!.color,
      elevation: 0,
      leading: IconButton( 
          onPressed: () => Navigator.pop(context),
          icon: SvgPicture.asset(
          "assets/icons/arrow.svg",
          color: Colors.white,
      )
      ),
      actions:  <Widget>[
        IconButton(
            onPressed: (){},
            icon: SvgPicture.asset(
              "assets/icons/search.svg",
              color: Colors.white,
            )
        ),
        IconButton(
            onPressed: (){},
            icon: SvgPicture.asset(
              "assets/icons/shopping-cart.svg",
              color: Colors.white,
            )
        ),
        SizedBox(width: KDefaultPaddin / 2,)
      ],

    );
  }
}
