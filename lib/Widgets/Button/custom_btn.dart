
import 'package:flutter/material.dart';
class CustomBtn extends StatelessWidget {
  final String? title;
  final VoidCallback? onPressed;
  const CustomBtn({
    this.title,
    this.onPressed,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 57,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: Color(0xFF000B49),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Center(
          child: Text('$title',style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w800,
              color: Colors.white
          ),),
        ),
      ),
    );
  }
}
