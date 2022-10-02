
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../Constants/Colors/app_color.dart';
import '../../../Widgets/TextField/normal_textfield.dart';
import '../../../Widgets/TextField/password_textfield.dart';

class SigninPage extends StatefulWidget {
  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  TextEditingController emilController= TextEditingController();
  TextEditingController passwordController= TextEditingController();
  final _globalkey = GlobalKey<FormState>();

  late bool circule;
  late bool validate;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      maintainBottomViewPadding: true,
      minimum: EdgeInsets.zero,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: -60,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: SvgPicture.asset("assets/icons/up.svg",),),
                ),
                Positioned(
                  right: 0,
                  bottom: -30,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: SvgPicture.asset("assets/icons/down.svg"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: Form(
                    key: _globalkey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Sign in',style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800
                          ),),
                        ),
                        const SizedBox(height: 5,),
                        MaterialTextField(hintText:"Email",readOnly: false,controller:emilController ,),
                        const SizedBox(height: 14,),
                        MaterialTextFieldPassword(hintText: "Password",controller:passwordController ,),
                        const SizedBox(height: 14,),
                        Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/resetPassword');
                            },
                            child:  Text("Forget Password?",style: TextStyle(color: kPrimaryColor,fontSize: 14,fontWeight: FontWeight.w400),),
                          ),
                        ),
                        const SizedBox(height: 14,),
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
                              Navigator.pushNamed(context, '/investPage');
                            },
                          ),
                        ),
                        const SizedBox(height: 13,),
                        Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, '/signup');
                            },
                            child: Text(' Create a new  account',style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: kPrimaryLightColor
                            ),),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            )
        ),
      ),

    );

  }
}
