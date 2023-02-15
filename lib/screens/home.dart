 import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/screens/components/body.dart';

class HomeScreen extends StatelessWidget {

   @override
   Widget build(BuildContext context) {
     return Scaffold(
        appBar: buildAppBar(),
       body: Body(),
     );
   }

   AppBar buildAppBar() {
     return AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: (){}, icon: SvgPicture.asset("assets/icons/arrow.svg")
        ),
        actions:  <Widget>[
          IconButton(
              onPressed: (){},
              icon: SvgPicture.asset(
                "assets/icons/search.svg",
                color: KTextColor,
              )
          ),
          IconButton(
              onPressed: (){},
              icon: SvgPicture.asset(
                "assets/icons/shopping-cart.svg",
                color: KTextColor,
              )
          ),
          SizedBox(width: KDefaultPaddin / 2,)
        ],
      );
   }
 }
