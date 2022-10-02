
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class HistoryCard extends StatelessWidget {
  final String? title;
  final Image? image;

  HistoryCard({
    this.title,
    this.image,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.symmetric(vertical: 4,horizontal: 20),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  flex: 9,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Center(child: image),
                      ),
                      SizedBox(width: 16,),
                      Expanded(
                        flex: 8,
                        child: Text('$title',style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),),
                      ),
                    ],
                  )
              ),
              Expanded(
                  flex: 1,
                  child: Image.asset('assets/icons/back.png'),
              )
            ],
          ),
          const Divider(
            thickness: 1.0,
          )
        ],
      ),
    );
  }
}
