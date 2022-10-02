import 'package:flutter/material.dart';
import 'package:fre_app/Presentation/Pages/home_page.dart';

import 'Presentation/Pages/Authentication/check_email.dart';
import 'Presentation/Pages/Authentication/new_password.dart';
import 'Presentation/Pages/Authentication/reset_password.dart';
import 'Presentation/Pages/Authentication/signin_page.dart';
import 'Presentation/Pages/Authentication/signup_page.dart';
import 'Presentation/Pages/NotFound/cancel_not_found_page.dart';
import 'Presentation/Pages/NotFound/delivery_not_found_page.dart';
import 'Presentation/Pages/NotFound/notification_not_found_page.dart';
import 'Presentation/Pages/NotFound/payment_not_found_page.dart';
import 'Presentation/Pages/NotFound/purchase_not_found_page.dart';
import 'Presentation/Pages/NotFound/return_not_found_page.dart';
import 'Presentation/Pages/brand_categories.dart';
import 'Presentation/Pages/invest_page.dart';
import 'Presentation/Pages/landing_page.dart';
import 'Presentation/Pages/main_page.dart';
import 'Presentation/Pages/notification_page.dart';
import 'Presentation/Pages/pjp_card.dart';
import 'Presentation/Pages/product_main_category.dart';
import 'Presentation/Pages/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/mainScreen',
      //initialRoute: '/choosePeoduct',
      routes: {
        '/setting': (context) => SettingsPage(),
        '/tabcard': (context) => PjpTabCard(),
        '/mainScreen': (context) => MainScreen(),
        '/investPage': (context) => InvestPage(),
        '/landing': (context) => LandingPage(),
        '/home': (context) => HomePage(),
        '/brandCategories': (context) => BrandCategories(),
        '/choosePeoduct': (context) => ChoosePeoduct(),
        '/checkEmail': (context) => CheckEmail(),
        '/resetPassword': (context) => ResetPassword(),
        '/newPassword': (context) => NewPassword(),
        '/signin': (context) => SigninPage(),
        '/signup': (context) => SignupPage(),
        '/notificationNotFound': (context) => NotificationNotFound(),
        '/cancelNotFound': (context) => CancelNotFound(),
        '/deliveryNotFound': (context) => DeliveryNotFound(),
        '/paymentNotFound': (context) => PaymentNotFound(),
        '/purchaseNotFound': (context) => PurchaseNotFound(),
        '/returnNotFound': (context) => ReturnNotFound(),
        '/notificationPage': (context) => NotificationPage(),
      },
    );
  }
}

