import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fre_app/Widgets/Button/custom_btn.dart';

import '../TextField/normal_textfield.dart';

class KAlertDialog extends StatefulWidget {
  const KAlertDialog({Key? key}) : super(key: key);

  @override
  State<KAlertDialog> createState() => _KAlertDialogState();
}

class _KAlertDialogState extends State<KAlertDialog> {
  TextEditingController amountController = TextEditingController();
  TextEditingController otherController = TextEditingController();
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(
                    'assets/icons/popUp.svg',
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.close,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Pay  With  PayRomi',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 11),
                  RichText(
                    text: const TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Payromi’s',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Colors.lightBlue,
                          ),
                        ),
                        TextSpan(
                          text:
                              'One-time card let’s you order your purchase\nOnly 5\$ at any online store.',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: 'What is a one-time card?',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Colors.lightBlue,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 18),
                  const Text(
                    'How it Work’s',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 26),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 23,
                              height: 23,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ),
                              ),
                              child: const Center(
                                child: Text('1'),
                              ),
                            ),
                            const SizedBox(width: 12),
                            const Text(
                              'When ready to pay, ‘ create a One-time card.',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 21),
                        Row(
                          children: [
                            Container(
                              width: 23,
                              height: 23,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ),
                              ),
                              child: const Center(
                                child: Text('2'),
                              ),
                            ),
                            const SizedBox(width: 12),
                            const Text(
                              'Select ‘pay by credit/debit cart’ at store’s',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 21),
                        Row(
                          children: [
                            Container(
                              width: 23,
                              height: 23,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ),
                              ),
                              child: const Center(
                                child: Text('3'),
                              ),
                            ),
                            const SizedBox(width: 12),
                            const Text(
                              'Use the PayRomi One-time Card in the same\nway you to by Card',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Row(
                    children: [
                      const Text(
                        'Payment .',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        children: [
                          const Text(
                            'Estimate your payment plan',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF1717F1),
                            ),
                          ),
                          SvgPicture.asset('assets/icons/arrow.svg'),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    child: const Text(
                      'No Credit Check',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  CustomBtn(
                    title: 'Continue',
                    onPressed: () {
                      //second
                      showModalBottomSheet(
                        context: context,
                        builder: (builder) {
                          return Column(
                            children: [
                              Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: SvgPicture.asset(
                                      'assets/icons/popUp.svg',
                                      width: MediaQuery.of(context).size.width,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.close,
                                        color: Colors.black,
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 29),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        const Center(
                                          child: Text(
                                            'How much is your purchase ?',
                                            style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 4),
                                        const Center(
                                          child: Text(
                                            'You will be charged for what you end up spending',
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 11),
                                        MaterialTextField(
                                          hintText: "Amount \$100",
                                          readOnly: false,
                                          controller: amountController,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 270),
                                    CustomBtn(
                                      title: 'Continue',
                                      onPressed: () {
                                        showModalBottomSheet(
                                          context: context,
                                          builder: (builder) {
                                            return Column(
                                              children: [
                                                Stack(
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: SvgPicture.asset(
                                                        'assets/icons/popUp.svg',
                                                        width: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .width,
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: IconButton(
                                                        onPressed: () {},
                                                        icon: const Icon(
                                                          Icons.close,
                                                          color: Colors.black,
                                                          size: 30,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                  margin: const EdgeInsets
                                                      .symmetric(
                                                    horizontal: 29,
                                                  ),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Column(
                                                        children: [
                                                          const Center(
                                                            child: Text(
                                                              'Should we add extra to cover shopping and tax ?',
                                                              style: TextStyle(
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              height: 8),
                                                          MaterialTextField(
                                                            hintText:
                                                                "Add 10% = \$100",
                                                            readOnly: false,
                                                            controller:
                                                                amountController,
                                                          ),
                                                          const SizedBox(
                                                              height: 35),
                                                          MaterialTextField(
                                                            hintText:
                                                                "Continue without adding tax",
                                                            readOnly: false,
                                                            controller:
                                                                otherController,
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                          height: 220),
                                                      CustomBtn(
                                                        title: 'Continue',
                                                        onPressed: () {
                                                          //third
                                                          showModalBottomSheet(
                                                            context: context,
                                                            builder: (builder) {
                                                              return Column(
                                                                children: [
                                                                  Stack(
                                                                    children: [
                                                                      Align(
                                                                        alignment:
                                                                            Alignment.topCenter,
                                                                        child: SvgPicture
                                                                            .asset(
                                                                          'assets/icons/popUp.svg',
                                                                          width: MediaQuery.of(context)
                                                                              .size
                                                                              .width,
                                                                        ),
                                                                      ),
                                                                      Align(
                                                                        alignment:
                                                                            Alignment.topRight,
                                                                        child:
                                                                            IconButton(
                                                                          onPressed:
                                                                              () {},
                                                                          icon:
                                                                              const Icon(
                                                                            Icons.close,
                                                                            color:
                                                                                Colors.black,
                                                                            size:
                                                                                30,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Align(
                                                                        alignment:
                                                                            Alignment.topLeft,
                                                                        child:
                                                                            IconButton(
                                                                          onPressed:
                                                                              () {},
                                                                          icon:
                                                                              const Icon(
                                                                            Icons.arrow_back_ios,
                                                                            color:
                                                                                Colors.black,
                                                                            size:
                                                                                30,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  const Center(
                                                                    child: Text(
                                                                      'Which installment method you like ?',
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            18,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        color: Colors
                                                                            .black,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const SizedBox(
                                                                      height:
                                                                          20),
                                                                  Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      InkWell(
                                                                        onTap:
                                                                            () {
                                                                          showModalBottomSheet(
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (builder) {
                                                                              return Column(
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Stack(
                                                                                    children: [
                                                                                      Align(
                                                                                        alignment: Alignment.topCenter,
                                                                                        child: SvgPicture.asset(
                                                                                          'assets/icons/popUp.svg',
                                                                                          width: MediaQuery.of(context).size.width,
                                                                                        ),
                                                                                      ),
                                                                                      Align(
                                                                                        alignment: Alignment.topRight,
                                                                                        child: IconButton(
                                                                                          onPressed: () {},
                                                                                          icon: const Icon(
                                                                                            Icons.close,
                                                                                            color: Colors.black,
                                                                                            size: 30,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Align(
                                                                                        alignment: Alignment.topLeft,
                                                                                        child: IconButton(
                                                                                          onPressed: () {},
                                                                                          icon: const Icon(
                                                                                            Icons.arrow_back_ios,
                                                                                            color: Colors.black,
                                                                                            size: 30,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  Container(
                                                                                    margin: const EdgeInsets.symmetric(horizontal: 86),
                                                                                    child: Column(
                                                                                      children: const [
                                                                                        Center(
                                                                                          child: Text(
                                                                                            'Weekly  plan',
                                                                                            style: TextStyle(fontSize: 21, fontWeight: FontWeight.w800, color: Colors.black),
                                                                                          ),
                                                                                        ),
                                                                                        Center(
                                                                                          child: Text(
                                                                                            'Your  purchase amount \$100',
                                                                                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  const SizedBox(height: 16),
                                                                                  Row(
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      Image.asset('assets/icons/dollar.png'),
                                                                                      SvgPicture.asset('assets/icons/chartframe.svg'),
                                                                                    ],
                                                                                  ),
                                                                                  const SizedBox(
                                                                                    height: 16,
                                                                                  ),
                                                                                  Row(
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      Image.asset('assets/icons/dollar.png'),
                                                                                      SvgPicture.asset('assets/icons/chartframe.svg'),
                                                                                    ],
                                                                                  ),
                                                                                  const SizedBox(height: 16),
                                                                                  Row(
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      Image.asset('assets/icons/dollar.png'),
                                                                                      SvgPicture.asset('assets/icons/chartframe.svg'),
                                                                                    ],
                                                                                  ),
                                                                                  const SizedBox(height: 16),
                                                                                  Row(
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      Image.asset('assets/icons/dollar.png'),
                                                                                      SvgPicture.asset('assets/icons/chartframe.svg'),
                                                                                    ],
                                                                                  ),
                                                                                  const SizedBox(height: 16),
                                                                                  Row(
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      Image.asset('assets/icons/dollar.png'),
                                                                                      SvgPicture.asset('assets/icons/chartframe.svg'),
                                                                                    ],
                                                                                  ),
                                                                                  const SizedBox(height: 16),
                                                                                  Container(
                                                                                    margin: const EdgeInsets.symmetric(horizontal: 31),
                                                                                    child: CustomBtn(
                                                                                      title: 'Continue',
                                                                                      onPressed: () {},
                                                                                    ),
                                                                                  )
                                                                                ],
                                                                              );
                                                                            },
                                                                          );
                                                                        },
                                                                        child:
                                                                            Container(
                                                                          margin:
                                                                              const EdgeInsets.symmetric(horizontal: 40),
                                                                          child:
                                                                              Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Transform.scale(
                                                                                scale: 1.5,
                                                                                child: Radio(
                                                                                  value: 0,
                                                                                  groupValue: _value,
                                                                                  onChanged: (value) {
                                                                                    setState(() {
                                                                                      _value = value as int;
                                                                                    });
                                                                                  },
                                                                                ),
                                                                              ),
                                                                              Column(
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: const [
                                                                                  Text(
                                                                                    'Weekly',
                                                                                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: Colors.black),
                                                                                  ),
                                                                                  Text(
                                                                                    'Today you pay only \$5  and  6 week\ninstallment',
                                                                                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, color: Colors.black),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      const SizedBox(
                                                                          height:
                                                                              18),
                                                                      InkWell(
                                                                        onTap:
                                                                            () {
                                                                          showModalBottomSheet(
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (builder) {
                                                                              return Column(
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Stack(
                                                                                    children: [
                                                                                      Align(
                                                                                        alignment: Alignment.topCenter,
                                                                                        child: SvgPicture.asset(
                                                                                          'assets/icons/popUp.svg',
                                                                                          width: MediaQuery.of(context).size.width,
                                                                                        ),
                                                                                      ),
                                                                                      Align(
                                                                                        alignment: Alignment.topRight,
                                                                                        child: IconButton(
                                                                                          onPressed: () {},
                                                                                          icon: const Icon(
                                                                                            Icons.close,
                                                                                            color: Colors.black,
                                                                                            size: 30,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Align(
                                                                                        alignment: Alignment.topLeft,
                                                                                        child: IconButton(
                                                                                          onPressed: () {},
                                                                                          icon: const Icon(
                                                                                            Icons.arrow_back_ios,
                                                                                            color: Colors.black,
                                                                                            size: 30,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  Container(
                                                                                    margin: const EdgeInsets.symmetric(horizontal: 86),
                                                                                    child: Column(
                                                                                      children: const [
                                                                                        Center(
                                                                                          child: Text(
                                                                                            'Bi-Weekly  plan',
                                                                                            style: TextStyle(fontSize: 21, fontWeight: FontWeight.w800, color: Colors.black),
                                                                                          ),
                                                                                        ),
                                                                                        Center(
                                                                                          child: Text(
                                                                                            'Your  purchase amount \$100',
                                                                                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  const SizedBox(height: 16),
                                                                                  Row(
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      Image.asset('assets/icons/dollar.png'),
                                                                                      SvgPicture.asset('assets/icons/chartframe.svg'),
                                                                                    ],
                                                                                  ),
                                                                                  const SizedBox(height: 16),
                                                                                  Row(
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      Image.asset('assets/icons/dollar.png'),
                                                                                      SvgPicture.asset('assets/icons/chartframe.svg'),
                                                                                    ],
                                                                                  ),
                                                                                  const SizedBox(height: 16),
                                                                                  Row(
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      Image.asset('assets/icons/dollar.png'),
                                                                                      SvgPicture.asset('assets/icons/chartframe.svg'),
                                                                                    ],
                                                                                  ),
                                                                                  const SizedBox(height: 16),
                                                                                  Row(
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      Image.asset('assets/icons/dollar.png'),
                                                                                      SvgPicture.asset('assets/icons/chartframe.svg'),
                                                                                    ],
                                                                                  ),
                                                                                  const SizedBox(height: 16),
                                                                                  Row(
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      Image.asset('assets/icons/dollar.png'),
                                                                                      SvgPicture.asset('assets/icons/chartframe.svg'),
                                                                                    ],
                                                                                  ),
                                                                                  const SizedBox(height: 16),
                                                                                  Container(
                                                                                    margin: const EdgeInsets.symmetric(horizontal: 31),
                                                                                    child: CustomBtn(
                                                                                      title: 'Continue',
                                                                                      onPressed: () {},
                                                                                    ),
                                                                                  )
                                                                                ],
                                                                              );
                                                                            },
                                                                          );
                                                                        },
                                                                        child:
                                                                            Container(
                                                                          margin:
                                                                              const EdgeInsets.only(right: 23),
                                                                          child:
                                                                              Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Transform.scale(
                                                                                scale: 1.5,
                                                                                child: Radio(
                                                                                  value: 0,
                                                                                  groupValue: _value,
                                                                                  onChanged: (value) {
                                                                                    setState(() {
                                                                                      _value = value as int;
                                                                                    });
                                                                                  },
                                                                                ),
                                                                              ),
                                                                              Column(
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: const [
                                                                                  Text(
                                                                                    'Bi-Weekly',
                                                                                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: Colors.black),
                                                                                  ),
                                                                                  Text(
                                                                                    'Today you pay only 25%  and  4\nweek installment',
                                                                                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, color: Colors.black),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      const SizedBox(
                                                                          height:
                                                                              18),
                                                                      InkWell(
                                                                        onTap:
                                                                            () {
                                                                          showModalBottomSheet(
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (builder) {
                                                                              return Column(
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Stack(
                                                                                    children: [
                                                                                      Align(
                                                                                          alignment: Alignment.topCenter,
                                                                                          child: SvgPicture.asset(
                                                                                            'assets/icons/popUp.svg',
                                                                                            width: MediaQuery.of(context).size.width,
                                                                                          )),
                                                                                      Align(
                                                                                        alignment: Alignment.topRight,
                                                                                        child: IconButton(
                                                                                          onPressed: () {},
                                                                                          icon: const Icon(
                                                                                            Icons.close,
                                                                                            color: Colors.black,
                                                                                            size: 30,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Align(
                                                                                        alignment: Alignment.topLeft,
                                                                                        child: IconButton(
                                                                                          onPressed: () {},
                                                                                          icon: const Icon(
                                                                                            Icons.arrow_back_ios,
                                                                                            color: Colors.black,
                                                                                            size: 30,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  Container(
                                                                                    margin: const EdgeInsets.symmetric(horizontal: 86),
                                                                                    child: Column(
                                                                                      children: const [
                                                                                        Center(
                                                                                          child: Text(
                                                                                            'Bi-Weekly  plan',
                                                                                            style: TextStyle(fontSize: 21, fontWeight: FontWeight.w800, color: Colors.black),
                                                                                          ),
                                                                                        ),
                                                                                        Center(
                                                                                          child: Text(
                                                                                            'Your  purchase amount \$100',
                                                                                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  const SizedBox(height: 16),
                                                                                  Container(
                                                                                    margin: const EdgeInsets.symmetric(horizontal: 31),
                                                                                    child: CustomBtn(
                                                                                      title: 'Continue',
                                                                                      onPressed: () {},
                                                                                    ),
                                                                                  )
                                                                                ],
                                                                              );
                                                                            },
                                                                          );
                                                                        },
                                                                        child:
                                                                            Container(
                                                                          margin:
                                                                              const EdgeInsets.only(right: 35),
                                                                          child:
                                                                              Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Transform.scale(
                                                                                scale: 1.5,
                                                                                child: Radio(
                                                                                  value: 0,
                                                                                  groupValue: _value,
                                                                                  onChanged: (value) {
                                                                                    setState(() {
                                                                                      _value = value as int;
                                                                                    });
                                                                                  },
                                                                                ),
                                                                              ),
                                                                              Column(
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: const [
                                                                                  Text(
                                                                                    'Monthly',
                                                                                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: Colors.black),
                                                                                  ),
                                                                                  Text(
                                                                                    '6% to 16% APR   and  6 to 36\nmonths  installment',
                                                                                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, color: Colors.black),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Container(
                                                                    margin: const EdgeInsets
                                                                            .symmetric(
                                                                        horizontal:
                                                                            40,
                                                                        vertical:
                                                                            40),
                                                                    child:
                                                                        CustomBtn(
                                                                      title:
                                                                          'Continue',
                                                                      onPressed:
                                                                          () {
                                                                        showModalBottomSheet(
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (builder) {
                                                                            return Column(
                                                                              children: [
                                                                                Stack(
                                                                                  children: [
                                                                                    Align(
                                                                                      alignment: Alignment.topCenter,
                                                                                      child: SvgPicture.asset(
                                                                                        'assets/icons/popUp.svg',
                                                                                        width: MediaQuery.of(context).size.width,
                                                                                      ),
                                                                                    ),
                                                                                    Align(
                                                                                      alignment: Alignment.topRight,
                                                                                      child: IconButton(
                                                                                        onPressed: () {},
                                                                                        icon: const Icon(
                                                                                          Icons.close,
                                                                                          color: Colors.black,
                                                                                          size: 30,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Align(
                                                                                      alignment: Alignment.topLeft,
                                                                                      child: IconButton(
                                                                                        onPressed: () {},
                                                                                        icon: const Icon(
                                                                                          Icons.arrow_back_ios,
                                                                                          color: Colors.black,
                                                                                          size: 30,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                const Center(
                                                                                  child: Text(
                                                                                    'Thank You For Choosing  Us',
                                                                                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800, color: Colors.black),
                                                                                  ),
                                                                                ),
                                                                                const Center(
                                                                                  child: Text(
                                                                                    'Purchased Power \$500 ',
                                                                                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Colors.black),
                                                                                  ),
                                                                                ),
                                                                                const Center(
                                                                                  child: Text(
                                                                                    'Your PayRomi Card will be send to your email address ',
                                                                                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
                                                                                  ),
                                                                                ),
                                                                                Container(
                                                                                  margin: const EdgeInsets.symmetric(horizontal: 31, vertical: 120),
                                                                                  child: CustomBtn(
                                                                                    title: 'Continue',
                                                                                    onPressed: () {
                                                                                      Navigator.pushNamed(context, '/home');
                                                                                    },
                                                                                  ),
                                                                                )
                                                                              ],
                                                                            );
                                                                          },
                                                                        );
                                                                      },
                                                                    ),
                                                                  ),
                                                                ],
                                                              );
                                                            },
                                                          );
                                                        },
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                    )
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                  const SizedBox(height: 15),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
