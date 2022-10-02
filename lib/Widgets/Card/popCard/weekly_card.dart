
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class WeeklyCard extends StatelessWidget {
  const WeeklyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SvgPicture.asset('assets/dollar.svg'),
          Container(
            height: 38,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.8),
                  spreadRadius: 10,
                  blurRadius: 5,
                  offset: Offset(0, 7), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                  height: 18,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFFEDC7D9),
                  ),
                  child: Center(
                    child: Text('\$5',style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
