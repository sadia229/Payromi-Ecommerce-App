
import 'package:flutter/material.dart';

import '../../Widgets/Card/Product/product_card.dart';

class PjpTabCard extends StatefulWidget {
  @override
  _PjpTabCardState createState() => _PjpTabCardState();
}

class _PjpTabCardState extends State<PjpTabCard>  with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState() {
    _tabController =  TabController(length:2, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFEDD2F3),
        elevation: 0,
        title: Text('Sunglass',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800),),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 385,
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: DefaultTabController(
              length: 2,
              child: Container(
                padding:const EdgeInsets.symmetric(horizontal: 5,vertical: 20),
                width: MediaQuery.of(context).size.width,
                height:50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          //padding:const EdgeInsets.symmetric(horizontal: 30),
                          margin:const EdgeInsets.symmetric(horizontal: 0),
                          decoration: BoxDecoration(
                            color:const Color(0XFFE1E8EF),
                            // color:Colors.redAccent,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child:TabBar(
                            controller: _tabController,
                            labelColor: Colors.white,
                            unselectedLabelColor: Colors.black,
                            indicator: BoxDecoration(
                              borderRadius: BorderRadius.circular(50), // Creates border
                              color: Color(0xFFEDD2F3),
                            ),
                            tabs: [
                              Tab(
                                child: Text('Brand',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black
                                  ),
                                )
                              ),
                              Tab(
                                child: Text('Product',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.black
                                  ),
                                )
                              ),
                            ],
                          )
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: TabBarView(
                          controller: _tabController,
                          children: [
                            Container(
                              child: SingleChildScrollView(
                                child: Row(
                                  children: [
                                    ProductCard(
                                      categoryTitle: 'Women’s dress',
                                    ),
                                    ProductCard(
                                      categoryTitle: 'Baby’s dress',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              child: SingleChildScrollView(
                                child: Row(
                                  children: [
                                    ProductCard(
                                      categoryTitle: 'Women’s dress',
                                    ),
                                    ProductCard(
                                      categoryTitle: 'Baby’s dress',
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ]
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),

    );
  }
}
