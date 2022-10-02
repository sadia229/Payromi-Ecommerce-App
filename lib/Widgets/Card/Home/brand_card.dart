
import 'package:flutter/material.dart';
class BrandCard extends StatelessWidget {
  final Image? categoryImg;
  final String? categoryTitle;
  const BrandCard({this.categoryImg,this.categoryTitle,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 59,
          height: 59,
          margin: EdgeInsets.only(right: 17),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(color: Colors.black87,width: 0.12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      //margin: EdgeInsets.only(top: 16),
                      child: Center(child: categoryImg)),
                ],
              ),

            ],
          ),
        ),
        SizedBox(height: 5),
        Text('$categoryTitle',style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w700
        ),)
      ],
    );
  }
}
