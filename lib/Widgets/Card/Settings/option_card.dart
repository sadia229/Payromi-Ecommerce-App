
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class OptionCard extends StatelessWidget {
  final String? title;
  final Image? img;
  const OptionCard({this.title,this.img,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 112,
      height: 70,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black,width: 0.12),
        borderRadius: BorderRadius.circular(5),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: img),
          SizedBox(height: 5),
          Text('$title',style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),)
        ],
      ),
    );
  }
}
