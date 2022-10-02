
import 'package:flutter/material.dart';

import '../../Widgets/Card/Home/brand_card.dart';
import '../../Widgets/Card/Home/category_card.dart';
import '../../Widgets/Card/Home/shop_sys_card.dart';
import '../../Widgets/TextField/search_textfield.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 15),
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
                ListView.builder(
                    itemCount: 1,
                    shrinkWrap: true,
                    itemBuilder: (context,i){
                      return Container(
                        child: Row(
                          children: [
                            ShopFindCard(
                              storeTitle: 'Online',
                              storeImg: Image.asset('assets/icons/online.png'),
                            ),
                            InkWell(
                              onTap: (){
                                showModalBottomSheet(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    context: context,
                                    builder: (builder) {
                                  return Container(
                                    height: 450,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('Comming Soon',style: TextStyle(
                                          fontSize: 36,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black
                                        ),),
                                        Center(child: Image.asset('assets/images/shoppingpopup.png')),
                                      ],
                                    ),
                                  );
                                });
                              },
                              child: ShopFindCard(
                                storeTitle: 'In Store',
                                storeImg: Image.asset('assets/icons/online.png'),
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                showModalBottomSheet(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    context: context,
                                    builder: (builder) {
                                      return Container(
                                        height: 450,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text('Comming Soon',style: TextStyle(
                                                fontSize: 36,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black
                                            ),),
                                            Center(child: Image.asset('assets/images/salepopup.png')),
                                          ],
                                        ),
                                      );
                                    });
                              },
                              child: ShopFindCard(
                                storeTitle: 'Coupon',
                                storeImg: Image.asset('assets/icons/online.png'),
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 72,
                  margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    border: Border.all(width: 0.12,color: Colors.black87),
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/icons/elec.png'),
                      RichText(
                        text: const TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: 'Purchase  Power', style: TextStyle(fontWeight: FontWeight.w700,fontSize: 24,color: Colors.black)),
                            TextSpan(text: ' \$100', style: TextStyle(fontWeight: FontWeight.w700,fontSize: 24,color: Colors.black)),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                  child: Image.asset('assets/images/homeBanner.png'),
                ),
                SizedBox(height: 33),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    children: [
                      InkWell(
                        onTap:(){
                          Navigator.pushNamed(context, '/choosePeoduct');
                        },
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
                      SizedBox(height: 15,),
                      SizedBox(
                        height: 125,
                        child: ListView.builder(
                            itemCount: 2,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context,i){
                              return Container(
                                child: Row(
                                  children: [
                                    GestureDetector(
                                      onTap:(){
                                        Navigator.pushNamed(context, '/tabcard');
                                      },
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
                                      categoryImg: Image.asset('assets/images/tshirt.png'),
                                      categoryTitle: 'Men’s clothing',
                                    ),
                                    CategoryCard(
                                      categoryImg: Image.asset('assets/images/shoe.png'),
                                      categoryTitle: 'Shoe’s',
                                    ),
                                    CategoryCard(
                                      categoryImg: Image.asset('assets/images/suite.png'),
                                      categoryTitle: 'Women’s clothing',
                                    ),
                                  ],
                                ),
                              );
                            }
                        ),
                      ),
                      // SizedBox(height: 5,),
                      SizedBox(
                        height: 125,
                        child: ListView.builder(
                            itemCount: 2,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context,i){
                              return Container(
                                child: Row(
                                  children: [
                                    CategoryCard(
                                      categoryImg: Image.asset('assets/images/sunglass.png'),
                                      categoryTitle: 'Eyewear',
                                    ),
                                    CategoryCard(
                                      categoryImg: Image.asset('assets/images/bag.png'),
                                      categoryTitle: 'Hand bags',
                                    ),
                                    CategoryCard(
                                      categoryImg: Image.asset('assets/images/maternity.png'),
                                      categoryTitle: 'Martarnity',
                                    ),
                                    CategoryCard(
                                      categoryImg: Image.asset('assets/images/makeup.png'),
                                      categoryTitle: 'Make up',
                                    ),
                                    CategoryCard(
                                      categoryImg: Image.asset('assets/images/luxery.png'),
                                      categoryTitle: 'Luxery clothing',
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
                //SizedBox(height: 5),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    children: [
                      InkWell(
                        onTap:(){
                          Navigator.pushNamed(context, '/brandCategories');
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Shop By Brand',style: TextStyle(
                              fontSize: 14,fontWeight: FontWeight.w700
                            ),),
                            Image.asset('assets/icons/categoryBack.png'),
                          ],
                        ),
                      ),
                      SizedBox(height: 15,),
                      SizedBox(
                        height: 125,
                        child: ListView.builder(
                            itemCount: 2,
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
                      // SizedBox(height: 5,),
                      SizedBox(
                        height: 125,
                        child: ListView.builder(
                            itemCount: 2,
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
        ),
      ),
    );
  }
}
