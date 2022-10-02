import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fre_app/Presentation/Pages/pjp_card.dart';
import 'package:fre_app/Presentation/Pages/product_main_category.dart';
import 'package:fre_app/Presentation/Pages/settings_page.dart';
import 'package:fre_app/Widgets/Button/custom_btn.dart';
import 'package:fre_app/Widgets/alert/k_alert_dialog.dart';

import '../../Widgets/TextField/normal_textfield.dart';
import '../../Widgets/TextField/password_textfield.dart';
import 'home_page.dart';
import 'landing_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  TextEditingController amountController = TextEditingController();
  TextEditingController otherController = TextEditingController();
  late PageController _pageController = PageController();

  //for tabs
  int _currentIndex = 0;
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: SizedBox.expand(
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _pageController,
              onPageChanged: (index) {
                setState(() => _currentIndex = index);
              },
              children: const [
                LandingPage(),
                HomePage(),
                ChoosePeoduct(),
                SettingsPage(),
              ],
            ),
          ),
          floatingActionButton: Container(
            width: 69,
            height: 60,
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: FittedBox(
              child: FloatingActionButton(
                onPressed: () {
                  //first
                  showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    context: context,
                    builder: (builder) {
                      return const KAlertDialog();
                    },
                  );
                },
                child: Image.asset(
                  "assets/icons/favicon.png",
                ),
                elevation: 4,
                backgroundColor: const Color(0xFF000B49),
              ),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            iconSize: 36,
            selectedItemColor: Colors.black,
            unselectedLabelStyle: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
            selectedLabelStyle:
                const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() => _currentIndex = index);
              _pageController.jumpToPage(index);
            },
            items: [
              const BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/icons/navback.png"),
                  color: Color(0xFF192A51),
                ),
                label: '',
              ),
              const BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/icons/home.png"),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  const AssetImage(
                    "assets/icons/fav.png",
                  ),
                  color: Colors.red.shade400,
                ),
                label: 'Like',
              ),
              const BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/icons/profile.png"),
                ),
                label: 'Account',
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onTapTab(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
