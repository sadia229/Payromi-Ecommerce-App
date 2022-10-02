
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Constants/Colors/app_color.dart';
class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  bool isLoading = false;
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    //width:MediaQuery.of(context).size.width,
                      child: Image.asset('assets/images/banner.png',height:MediaQuery.of(context).size.height*0.5,width: double.infinity,)),
                  const SizedBox(height: 53,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 36),
                    //height: MediaQuery.of(context).size.height*0.4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Already Have An Account',style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700
                        ),),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 56,
                          margin: EdgeInsets.only(top: 10),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: isLoading?btnProgressColor:btnColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: isLoading? CircularProgressIndicator(color: Colors.white):Text('Sing  In',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: Colors.white),),
                            onPressed: () async {
                              if (isLoading) return;
                              setState(() {
                                isLoading = true;
                              });
                              await Future.delayed(Duration(seconds: 2));
                              setState(() {
                                isLoading = false;
                              });
                              Navigator.pushNamed(context, '/signin');
                            },
                          ),
                        ),
                        const SizedBox(height: 23,),
                        Text('Create New Account',style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700
                        ),),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 56,
                          margin: EdgeInsets.only(top: 10),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: isClicked?btnProgressColor:btnColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: isClicked? CircularProgressIndicator(color: Colors.white):Text('Sign up',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: Colors.white),),
                            onPressed: () async {
                              if (isClicked) return;
                              setState(() {
                                isClicked = true;
                              });
                              await Future.delayed(Duration(seconds: 2));
                              setState(() {
                                isClicked = false;
                              });
                              Navigator.pushNamed(context, '/signup');
                            },
                          ),
                        ),

                      ],
                    ),
                  ),
                  const SizedBox(height: 33,),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: SvgPicture.asset('assets/icons/down.svg')),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
