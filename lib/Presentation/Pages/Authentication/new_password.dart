
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../Constants/Colors/app_color.dart';
import '../../../Widgets/TextField/normal_textfield.dart';
import '../../../Widgets/TextField/password_textfield.dart';

class NewPassword extends StatefulWidget {
  @override
  _NewPasswordState createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  TextEditingController passwordController= TextEditingController();
  TextEditingController confirmPasswordController= TextEditingController();
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
                          alignment: Alignment.centerLeft,
                          child: Text('Create new password',style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800
                          ),),
                        ),
                        const SizedBox(height: 5,),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: MediaQuery.of(context).size.height*0.08,
                            child: Text('Your new password must be different\nfrom previous used passwords.',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400
                              ),),
                          ),
                        ),
                        MaterialTextFieldPassword(hintText: "Password",controller:passwordController ,),
                        const SizedBox(height: 10,),
                        MaterialTextFieldPassword(hintText: "Password",controller:confirmPasswordController ,),
                        const SizedBox(height: 21,),
                        Container(width: MediaQuery.of(context).size.width,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(radius: 2,backgroundColor: Colors.black,),
                                  const SizedBox(width: 8,),
                                  Text("At least 10 Characters",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300),),
                                ],
                              ),
                              const SizedBox(height: 10,),
                              Row(
                                children: [
                                  CircleAvatar(radius: 2,backgroundColor: Colors.black,),
                                  const SizedBox(width: 8,),
                                  Text("At least One @#\$%&*",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300),),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 17,),
                        const SizedBox(height: 19,),
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
                            child: isLoading? CircularProgressIndicator(color: Colors.white):Text('Reset Password',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: Colors.white),),
                            onPressed: () async {
                              if (isLoading) return;
                              setState(() {
                                isLoading = true;
                              });
                              await Future.delayed(Duration(seconds: 2));
                              setState(() {
                                isLoading = false;
                              });
                              Navigator.pushNamed(context, '/checkEmail');
                            },
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
