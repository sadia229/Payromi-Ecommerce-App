
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SvgPicture.asset('assets/icons/notification.svg'),
              const Text('Notifications',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w800
              ),),
              Text('data',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
