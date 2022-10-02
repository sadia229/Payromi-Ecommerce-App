
import 'package:flutter/material.dart';
class ProductCard extends StatelessWidget {
  final String? categoryTitle;
  ProductCard({this.categoryTitle,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width*0.43,
          height: 248,
          margin: EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.black,width: 0.12),
          ),
          child: Stack(
            children: [
              Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 209,
                      child: Image.asset('assets/images/product.png',fit: BoxFit.fill,))),

              Positioned(
                bottom: 12,
                left: 7,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text('$categoryTitle',style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w700
                  ),),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
