
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class DeliveryNotFound extends StatelessWidget {
  const DeliveryNotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Container(
                    child: SvgPicture.asset('assets/images/Vector.svg',
                      width: MediaQuery.of(context).size.width,
                    )),
                const SizedBox(height: 17,),
                Align(
                  alignment:Alignment.center,
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.08,
                    child: const Text('Delivery',style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w800
                    ),),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.84,
                  height: MediaQuery.of(context).size.height*0.1,
                  child: Column(
                    children: const[
                      Align(
                        alignment:Alignment.centerLeft,
                        child: Text('No delivery Yet',style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600
                        )),
                      ),
                      Align(
                        alignment:Alignment.centerLeft,
                        child: Text('Your delivery will appear here once you’ve \n recived them.',style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300
                        )),
                      ),
                    ],
                  ),
                ),
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: MediaQuery.of(context).size.height*0.45,
                        child: Image.asset('assets/images/noDelivery.png'))),
                InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Align(
                        alignment:Alignment.centerLeft,
                        child: Container(
                            width: MediaQuery.of(context).size.width*0.25,
                            height: MediaQuery.of(context).size.height*0.1,
                            child: Image.asset('assets/images/Back.png')))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
