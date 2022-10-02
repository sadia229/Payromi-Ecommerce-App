
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../Constants/Colors/app_color.dart';
import '../../../Widgets/TextField/normal_textfield.dart';
import '../../../Widgets/TextField/password_textfield.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController emilController= TextEditingController();
  TextEditingController phoneController= TextEditingController();
  TextEditingController passwordController= TextEditingController();
  final _globalkey = GlobalKey<FormState>();

  late bool circule;
  late bool validate;
  bool isLoading = false;
  bool isCheckedOne = false;
  bool isCheckedTwo = false;

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
                  top: -75,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: SvgPicture.asset("assets/icons/up.svg",),),
                ),
                Positioned(
                  right: 0,
                  bottom: -35,
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
                          child: Text('Create account',style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800
                          ),),
                        ),
                        const SizedBox(height: 5,),
                        MaterialTextField(hintText:"Email",readOnly: false,controller:emilController ,),
                        const SizedBox(height: 10,),
                        MaterialTextField(hintText:"Phone Number",readOnly: false,controller:phoneController ,),
                        const SizedBox(height: 10,),
                        MaterialTextFieldPassword(hintText: "Password",controller:passwordController ,),
                        const SizedBox(height: 21,),
                        Container(width: MediaQuery.of(context).size.width*0.8,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(radius: 2,backgroundColor: Colors.black,),
                                  const SizedBox(width: 8,),
                                  Text("At least 10 Characters",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w800),),
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
                                        fontSize: 12,
                                        fontWeight: FontWeight.w800),),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 17,),
                        Column(
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  activeColor: Colors.lightBlue, //The color to use when this checkbox is checked.
                                  checkColor: Colors.white, // The color to use for the check icon when this checkbox is checked.
                                  value: isCheckedOne,
                                  onChanged: (value) {
                                    setState(() {
                                      isCheckedOne = value!;
                                    });
                                  },
                                ),
                                Expanded(
                                    flex: 6,
                                    child: Text('Send me emails and massage  about new arrivals, hot items, daily savings, & more.'))
                              ],

                            ),
                            const SizedBox(height: 20,),
                            Row(
                              children: [
                                Checkbox(
                                  activeColor: Colors.lightBlue, //The color to use when this checkbox is checked.
                                  checkColor: Colors.white, // The color to use for the check icon when this checkbox is checked.
                                  value: isCheckedTwo,
                                  onChanged: (value) {
                                    setState(() {
                                      isCheckedTwo = value!;
                                    });
                                  },
                                ),
                                Expanded(
                                    flex: 6,
                                    child: Text('By clicking Create Account, you acknowledge you have read and agreed to our Terms of Use and Privacy Policy.'))
                              ],

                            ),
                          ],
                        ),
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
                            child: isLoading? CircularProgressIndicator(color: Colors.white):Text('Sign up',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: Colors.white),),
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
                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, '/signin');
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width*0.85,
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
