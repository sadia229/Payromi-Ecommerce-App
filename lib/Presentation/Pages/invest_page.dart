
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Widgets/Card/Invest/invest_card.dart';
import '../../Widgets/Card/Settings/history_card.dart';
import '../../Widgets/Card/Settings/option_card.dart';
class InvestPage extends StatelessWidget {
  const InvestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height*0.15,
                  child: Image.asset('assets/icons/payromi.png')),
              Container(
                height: MediaQuery.of(context).size.height*0.08,
                width: MediaQuery.of(context).size.width*0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Text('Good Morning ,',
                      style: TextStyle(
                          fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black
                      ),
                    ),
                    Text('Mr abc',
                      style: TextStyle(
                          fontSize: 18,fontWeight: FontWeight.w700,color: Colors.black
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 72,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  border: Border.all(width: 0.12,color: Colors.black87),
                ),
                child: Row(
                  children: [
                    Expanded(
                        flex:2,
                        child: Image.asset('assets/icons/elec.png')),
                    Expanded(
                      flex: 10,
                      child: RichText(
                        text: const TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: 'Purchase  Power', style: TextStyle(fontWeight: FontWeight.w700,fontSize: 24,color: Colors.black)),
                            TextSpan(text: '\$100', style: TextStyle(fontWeight: FontWeight.w700,fontSize: 24,color: Colors.black)),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 9),
                  child: Image.asset('assets/images/homeBanner.png')),
              const SizedBox(height: 27),
              Container(
                height: MediaQuery.of(context).size.height*0.37,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Catagories',style: TextStyle(
                              fontSize: 14,fontWeight: FontWeight.w700
                          ),),
                          Image.asset('assets/icons/categoryBack.png'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 14),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 11),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: (){
                                  Navigator.pushNamed(context, '/notificationNotFound');
                                },
                                child: InvestCard(
                                  title: 'Bank',
                                  img: Image.asset('assets/icons/Museum.png'),
                                ),
                              ),
                              InkWell(
                                onTap: (){
                                  Navigator.pushNamed(context, '/purchaseNotFound');
                                },
                                child: InvestCard(
                                  title: 'Loan',
                                  img: Image.asset('assets/icons/BankBuilding.png'),
                                ),
                              ),
                              InkWell(
                                onTap: (){
                                  Navigator.pushNamed(context, '/paymentNotFound');
                                },
                                child: InvestCard(
                                  title: 'Credit card',
                                  img: Image.asset('assets/icons/BankCards.png'),
                                ),
                              ),
                              InkWell(
                                onTap: (){
                                  Navigator.pushNamed(context, '/paymentNotFound');
                                },
                                child: InvestCard(
                                  title: 'Payromi Card',
                                  img: Image.asset('assets/icons/payromiIcon.png'),
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
                                child: InvestCard(
                                  title: 'Insurance',
                                  img: Image.asset('assets/icons/Lease.png'),
                                ),
                              ),
                              InkWell(
                                onTap: (){
                                  Navigator.pushNamed(context, '/returnNotFound');
                                },
                                child: InvestCard(
                                  title: 'Transfer',
                                  img: Image.asset('assets/icons/Exchange.png'),
                                ),
                              ),
                              InkWell(
                                onTap: (){
                                  Navigator.pushNamed(context, '/cancelNotFound');
                                },
                                child: InvestCard(
                                  title: 'Personal loan',
                                  img: Image.asset('assets/icons/GetCash.png'),
                                ),
                              ),
                              InkWell(
                                onTap: (){
                                  Navigator.pushNamed(context, '/home');
                                },
                                child: InvestCard(
                                  title: 'Shopping',
                                  img: Image.asset('assets/icons/shopping.png'),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  height: MediaQuery.of(context).size.height*0.25,
                  child: Image.asset('assets/images/bankBanner.png')),
              const SizedBox(height: 10,),
              Container(
                  height: MediaQuery.of(context).size.height*0.25,
                  child: Image.asset('assets/images/bankBanner.png')),
              const SizedBox(height: 10,),
              Container(
                  height: MediaQuery.of(context).size.height*0.25,
                  child: Image.asset('assets/images/bankBanner.png')),
            ],
          ),
        ),
      ),
    );
  }
}
