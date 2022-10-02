
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Widgets/Card/Settings/history_card.dart';
import '../../Widgets/Card/Settings/option_card.dart';
class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                  child: SvgPicture.asset('assets/images/Vector.svg',
                  width: MediaQuery.of(context).size.width,
                  )),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 14),
                child: Row(
                  children:[
                    CircleAvatar(
                      radius: 23,
                      backgroundColor: Colors.lightBlue,
                    ),
                    const SizedBox(width: 8),
                    Text('ABC time',
                    style: TextStyle(
                      fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black
                    ),
                    ),
                    const SizedBox(width: 217),
                    Image.asset('assets/icons/gear.png'),
                  ],
                ),
              ),
              const SizedBox(height: 6),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 72,
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  border: Border.all(width: 0.1,color: Colors.black87),
                ),
                child: Row(
                  children: [
                    Image.asset('assets/icons/elec.png'),
                    RichText(
                      text: const TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: 'Purchase  Power', style: TextStyle(fontWeight: FontWeight.w700,fontSize: 24,color: Colors.black)),
                          TextSpan(text: '  100', style: TextStyle(fontWeight: FontWeight.w700,fontSize: 24,color: Colors.black)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 27),
              Container(
                 child: Column(
                   children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         InkWell(
                           onTap: (){
                             Navigator.pushNamed(context, '/notificationNotFound');
                           },
                           child: OptionCard(
                             title: 'Notification',
                             img: Image.asset('assets/icons/notification.png'),
                           ),
                         ),
                         InkWell(
                           onTap: (){
                             Navigator.pushNamed(context, '/purchaseNotFound');
                           },
                           child: OptionCard(
                             title: 'Purchase',
                             img: Image.asset('assets/icons/cart.png'),
                           ),
                         ),
                         InkWell(
                           onTap: (){
                             Navigator.pushNamed(context, '/paymentNotFound');
                           },
                           child: OptionCard(
                             title: 'Payment',
                             img: Image.asset('assets/icons/payment.png'),
                           ),
                         ),
                       ],
                     ),
                     SizedBox(height: 20),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         InkWell(
                           onTap: (){
                             Navigator.pushNamed(context, '/deliveryNotFound');
                           },
                           child: OptionCard(
                             title: 'Delivery',
                             img: Image.asset('assets/icons/delivery.png'),
                           ),
                         ),
                         InkWell(
                           onTap: (){
                             Navigator.pushNamed(context, '/returnNotFound');
                           },
                           child: OptionCard(
                             title: 'Return',
                             img: Image.asset('assets/icons/cart.png'),
                           ),
                         ),
                         InkWell(
                           onTap: (){
                             Navigator.pushNamed(context, '/cancelNotFound');
                           },
                           child: OptionCard(
                             title: 'Cancel',
                             img: Image.asset('assets/icons/cancel.png'),
                           ),
                         ),
                       ],
                     ),
                   ],
                 ),
               ),
              const SizedBox(height: 55),
              Container(
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                        //Navigator.pushNamed(context, routeName);
                      },
                      child: HistoryCard(
                        image: Image.asset('assets/icons/network.png',height: 25),
                        title: 'How it’s work',
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        //Navigator.pushNamed(context, routeName);
                      },
                      child: HistoryCard(
                        image: Image.asset('assets/icons/help.png',height: 25),
                        title: 'Help',
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        //Navigator.pushNamed(context, routeName);
                      },
                      child: HistoryCard(
                        image: Image.asset('assets/icons/handshake.png',height: 25),
                        title: 'Become a partner',
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        //Navigator.pushNamed(context, routeName);
                      },
                      child: HistoryCard(
                        image: Image.asset('assets/icons/users.png',height: 25),
                        title: 'Join Our team',
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        //Navigator.pushNamed(context, routeName);
                      },
                      child: HistoryCard(
                        image: Image.asset('assets/icons/security.png',height: 25),
                        title: 'Privacy',
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        //Navigator.pushNamed(context, routeName);
                      },
                      child: HistoryCard(
                        image: Image.asset('assets/icons/securitycon.png',height: 25),
                        title: 'Term & Condition',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 61),
            ],
          ),
        ),
      ),
    );
  }
}
