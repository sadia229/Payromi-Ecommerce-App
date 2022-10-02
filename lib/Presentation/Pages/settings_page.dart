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
          margin: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.lightBlue,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'ABC time',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Image.asset('assets/icons/gear.png'),
                  ],
                ),
              ),
              const SizedBox(height: 6),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 75,
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Image.asset('assets/icons/elec.png'),
                    RichText(
                      text: const TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Purchase  Power',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 24,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text: '  100',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 24,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, '/notificationNotFound');
                        },
                        child: OptionCard(
                          title: 'Notification',
                          img: Image.asset('assets/icons/notification.png'),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/purchaseNotFound');
                        },
                        child: OptionCard(
                          title: 'Purchase',
                          img: Image.asset('assets/icons/cart.png'),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/paymentNotFound');
                        },
                        child: OptionCard(
                          title: 'Payment',
                          img: Image.asset('assets/icons/payment.png'),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/deliveryNotFound');
                        },
                        child: OptionCard(
                          title: 'Delivery',
                          img: Image.asset('assets/icons/delivery.png'),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/returnNotFound');
                        },
                        child: OptionCard(
                          title: 'Return',
                          img: Image.asset('assets/icons/cart.png'),
                        ),
                      ),
                      InkWell(
                        onTap: () {
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
              const SizedBox(height: 55),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      //Navigator.pushNamed(context, routeName);
                    },
                    child: HistoryCard(
                      image:
                          Image.asset('assets/icons/network.png', height: 25),
                      title: 'How it’s work',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      //Navigator.pushNamed(context, routeName);
                    },
                    child: HistoryCard(
                      image: Image.asset('assets/icons/help.png', height: 25),
                      title: 'Help',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      //Navigator.pushNamed(context, routeName);
                    },
                    child: HistoryCard(
                      image: Image.asset('assets/icons/handshake.png',
                          height: 25),
                      title: 'Become a partner',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      //Navigator.pushNamed(context, routeName);
                    },
                    child: HistoryCard(
                      image:
                          Image.asset('assets/icons/users.png', height: 25),
                      title: 'Join Our team',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      //Navigator.pushNamed(context, routeName);
                    },
                    child: HistoryCard(
                      image: Image.asset('assets/icons/security.png',
                          height: 25),
                      title: 'Privacy',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      //Navigator.pushNamed(context, routeName);
                    },
                    child: HistoryCard(
                      image: Image.asset('assets/icons/securitycon.png',
                          height: 25),
                      title: 'Term & Condition',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
