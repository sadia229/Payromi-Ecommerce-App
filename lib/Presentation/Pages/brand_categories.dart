
import 'package:flutter/material.dart';

import '../../Constants/Colors/app_color.dart';
import '../../Widgets/Card/Home/brand_card.dart';
import '../../Widgets/Card/Home/category_card.dart';
import '../../Widgets/TextField/search_textfield.dart';
class BrandCategories extends StatefulWidget {
  const BrandCategories({Key? key}) : super(key: key);

  @override
  _BrandCategoriesState createState() => _BrandCategoriesState();
}

class _BrandCategoriesState extends State<BrandCategories> with TickerProviderStateMixin{
  bool isClicked = true;
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 9, vsync: this);
    return Container(
      color: Colors.white,
      child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 12),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height:MediaQuery.of(context).size.height*0.1,
                      child: Row(
                        children: const [
                          Expanded(
                            flex: 7,
                            child: Text('PayRomi',style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w800
                            ),),
                          ),
                          Expanded(
                              flex: 12,
                              child: SearchField()),
                        ],
                      ),
                    ),
                    Container(
                      height: 78,
                      child: TabBar(
                        isScrollable: true,
                        controller: _tabController,
                        indicatorColor: indicatorColor,
                        indicatorWeight: 5,
                        labelColor: Colors.black,
                        labelPadding: EdgeInsets.only(right: 6),
                        tabs: [
                          Container(
                            //width: MediaQuery.of(context).size.width*0.33,
                            child: CategoryCard(
                              categoryImg: Image.asset('assets/images/dress.png'),
                              categoryTitle: 'Women’s dress',
                            ),
                          ),
                          CategoryCard(
                            categoryImg: Image.asset('assets/images/babydress.png'),
                            categoryTitle: 'Baby’s dress',
                          ),
                          CategoryCard(
                            categoryImg: Image.asset('assets/images/shoe.png'),
                            categoryTitle: 'Shoe’s',
                          ),
                          CategoryCard(
                            categoryImg: Image.asset('assets/images/dress.png'),
                            categoryTitle: 'Women’s dress',
                          ),
                          CategoryCard(
                            categoryImg: Image.asset('assets/images/babydress.png'),
                            categoryTitle: 'Baby’s dress',
                          ),
                          CategoryCard(
                            categoryImg: Image.asset('assets/images/shoe.png'),
                            categoryTitle: 'Shoe’s',
                          ),
                          CategoryCard(
                            categoryImg: Image.asset('assets/images/dress.png'),
                            categoryTitle: 'Women’s dress',
                          ),
                          CategoryCard(
                            categoryImg: Image.asset('assets/images/babydress.png'),
                            categoryTitle: 'Baby’s dress',
                          ),
                          CategoryCard(
                            categoryImg: Image.asset('assets/images/shoe.png'),
                            categoryTitle: 'Shoe’s',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: TabBarView(
                          controller: _tabController,
                          children: [
                            SingleChildScrollView(
                              child: Column(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('A',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('B',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('C',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('D',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('E',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              child: Column(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('A',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('B',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('C',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('D',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('E',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              child: Column(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('A',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('B',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('C',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('D',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('E',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              child: Column(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('A',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('B',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('C',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('D',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('E',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              child: Column(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('A',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('B',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('C',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('D',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('E',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              child: Column(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('A',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('B',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('C',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('D',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('E',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              child: Column(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('A',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('B',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('C',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('D',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('E',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              child: Column(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('A',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('B',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('C',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('D',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('E',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              child: Column(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('A',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('B',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('C',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('D',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('E',style: TextStyle(
                                                fontSize: 14,fontWeight: FontWeight.w700
                                            ),),
                                            Divider(thickness: 0.25,color: Colors.black,),
                                            const SizedBox(height: 17,),
                                            Container(
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 125,
                                                    child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context,i){
                                                          return Container(
                                                            child: Row(
                                                              children: [
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoOne.png'),
                                                                  categoryTitle: 'Women’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoTwo.png'),
                                                                  categoryTitle: 'Baby’s dress',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoThree.png'),
                                                                  categoryTitle: 'Men’s clothing',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFour.png'),
                                                                  categoryTitle: 'Shoe’s',
                                                                ),
                                                                BrandCard(
                                                                  categoryImg: Image.asset('assets/images/logoFive.png'),
                                                                  categoryTitle: 'Women’s clothing',
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
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
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
