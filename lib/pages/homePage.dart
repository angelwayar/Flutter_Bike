
import 'productDetail.dart';
import 'package:flutter/material.dart';
import 'package:bicycle/model/model.dart';
import 'package:bicycle/utils/style.dart';

class HomePage extends StatelessWidget {
  final product = products[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 400,
            width: double.infinity,
            child: LayoutBuilder(
              builder: (cx, ct) {
                double w = ct.maxWidth;
                double h = ct.minHeight;

                return Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topRight,
                      child: Hero(
                        tag: "bg",
                        child: Container(
                          width: w * 0.9,
                          height: h * 0.75,
                          color: Color(0xFFFFC5C5),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 50,
                      left: 65,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(product.type, style: AppStyle.appbarStyle,),
                          SizedBox(height: 12.0,),
                          Text(product.name, style: AppStyle.headingStyle,),
                        ],
                      ),
                    ),
                    Positioned(
                      top: h * 0.32,
                      left: -50,
                      child: Hero(
                        tag: product.name,
                        child: Image.asset(product.imgUrl, width: 370, height: 250),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
          SizedBox(
            height: 75,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Amazing Speed', style: AppStyle.headingStyle2),
                SizedBox(height: 6.0,),
                Text('Incredible Power.', style: AppStyle.headingStyle2,),
                SizedBox(height: 20,),
                Text('The Top Fuel 9.9 X1 AXS is built for Speed and Capability on Any terrein', style: AppStyle.descStyle,),
                SizedBox(height: 16.0,),
                Align(alignment: Alignment.bottomRight, 
                child: Padding(
                  padding: EdgeInsets.only(right: 22.0),
                  child: IconButton(
                    icon: Icon(Icons.arrow_forward),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => ProductDetail(product: product,)
                      ));
                    },
                  ),
                ),)
              ],
            ),
          )
        ],
      ),
    );
  }
}