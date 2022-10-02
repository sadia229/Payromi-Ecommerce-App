
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class InvestCard extends StatelessWidget {
  final String? title;
  final Image? img;
  const InvestCard({this.title,this.img,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width*0.2,
          height: 48.7,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black,width: 0.12),
            borderRadius: BorderRadius.circular(5),
          ),
          margin: const EdgeInsets.only(right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: img),
            ],
          ),
        ),
        SizedBox(height: 8),
        Center(
          child: Text('$title',style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),),
        )
      ],
    );
  }
}
