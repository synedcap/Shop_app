import 'package:flutter/material.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/screens/components/details/product_title_with_image.dart';

import '../../../models/product.dart';
class Body extends StatelessWidget {

  Product? product ;
  Body({Key? key,this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
           child: Column(
             children: <Widget>[
                SizedBox(
                  height: size.height,
                  child: Stack(
                    children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: size.height * 0.3),
                         padding: EdgeInsets.only(
                             top: size.height * 0.12,
                             left: KDefaultPaddin,
                             right: KDefaultPaddin,
                         ),
                         // height: 500,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(24),
                                topRight: Radius.circular(24),
                            )
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Text("Color"),
                                      Container(
                                        height: 24,
                                        width: 24,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Color(0xFF356C95)
                                          )
                                        ),
                                       // child: DecoratedBox(),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ProductTitleWithImage(product: product)
                    ],
                  ),
                )
             ],
           ),
    );
  }
}


