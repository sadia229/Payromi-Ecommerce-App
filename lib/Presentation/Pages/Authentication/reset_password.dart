
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../Constants/Colors/app_color.dart';
import '../../../Widgets/TextField/normal_textfield.dart';
import '../../../Widgets/TextField/password_textfield.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
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
                  top: -70,
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
                            alignment: Alignment.center,
                            child: Container(
                                height: MediaQuery.of(context).size.height*0.20,
                                child: Image.asset('assets/icons/lock.png'))),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Reset password',style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800
                          ),),
                        ),
                        const SizedBox(height: 10,),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: MediaQuery.of(context).size.height*0.10,
                            child: Text('Enter the email associated with your account and we’ll\nsend an email with instructions to rest your password.',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400
                              ),),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width*0.88,
                          height: MediaQuery.of(context).size.height*0.05,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Enter your email',style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black
                              ),),
                              Text('Create a new  account',style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: kPrimaryLightColor
                              ),),
                            ],
                          ),
                        ),
                        // const SizedBox(height: 88,),
                        MaterialTextField(hintText:"Email",readOnly: false,controller:emilController ,),
                        const SizedBox(height: 22,),
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
                            child: isLoading? CircularProgressIndicator(color: Colors.white):Text('Send  instructions',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: Colors.white),),
                            onPressed: () async {
                              if (isLoading) return;
                              setState(() {
                                isLoading = true;
                              });
                              await Future.delayed(Duration(seconds: 2));
                              setState(() {
                                isLoading = false;
                              });
                              Navigator.pushNamed(context, '/newPassword');
                            },
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width*0.85,
                          height: MediaQuery.of(context).size.height*0.04,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const[
                              Text('Have an account?',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black
                                ),),
                              Text(' Sing in',style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: kPrimaryLightColor
                              ),),
                            ],
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
