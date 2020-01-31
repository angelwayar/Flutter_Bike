import 'package:flutter/material.dart';
import 'package:bicycle/model/model.dart';
import 'package:bicycle/utils/style.dart';
import 'package:bicycle/utils/customIcons.dart';

class ProductDetail extends StatelessWidget{
  final Product product;

  ProductDetail({this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Hero(
            tag: "bg",
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Color(0xFFFFC5C5),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 35.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 18.0, right: 18.0, top: 50.0, bottom: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(product.type, style: AppStyle.appbarStyle,),
                        Container(
                          width: 45.0,
                          height: 45.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.shopping_cart, size: 18.0 ),
                        )
                      ],
                    ),
                  ),
                  Hero(
                    tag: product.name,
                    child: Image.asset(product.imgUrl, width: 280, height: 250,),
                  ),
                  SizedBox(height: 50.0,),
                  Text(product.name, style: AppStyle.headingStyle),
                  SizedBox(height: 30.0,),
                  Text('Top fuel 9.9 XX1 AXS is top tiew full auto'
                       'suspension carbon mountain bike',
                       style: AppStyle.descStyle,),
                  SizedBox(height: 30.0,),
                  Text("It's also spec'd with heigh-end ROCkShox"
                       "suspension and lots of carbon-including"
                       "the wheels, bars, and shift levers. You'all fly"
                       "through singletrack and rip descents on"
                       "this bike",
                       style: AppStyle.descStyle,),
                  SizedBox(height: 40.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "\$${product.price}",
                        style: AppStyle.headingStyle
                      ),
                      FlatButton(
                        child: Text('Add to cart'.toUpperCase(), style: AppStyle.flatButtonStyle),
                        onPressed: () {

                        },
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}