
import 'package:flutter/material.dart';
class ShopFindCard extends StatelessWidget {
  final Image? storeImg;
  final String? storeTitle;
  const ShopFindCard({this.storeImg,this.storeTitle,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.28,
      height: 41,
      margin: EdgeInsets.only(right: 9,top: 21),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.black87,width: 0.12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              margin: EdgeInsets.only(top: 6),
              child: Center(child: storeImg)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 14.0,horizontal: 3),
            child: Text('$storeTitle',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400
            ),
            ),
          ),
        ],
      ),
    );
  }
}
