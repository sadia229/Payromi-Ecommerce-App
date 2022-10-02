
import 'package:flutter/material.dart';
class CategoryCard extends StatelessWidget {
  final Image? categoryImg;
  final String? categoryTitle;
  const CategoryCard({this.categoryImg,this.categoryTitle,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 88,
          //height: 60,
          margin: EdgeInsets.only(right: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.black87,width: 0.12),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 6),
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
        ),),

      ],
    );
  }
}
