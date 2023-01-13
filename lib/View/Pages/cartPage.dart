import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  String name = 'Your Name';
  String card1 = '- - - -';
  String card2 = '- - - -';
  String card3 = '- - - -';
  String card4 = '- - - -';
  String month = '- -';
  String day = '- -';
  String cvv2 = '- - - -';

  final focus1 = FocusNode();
  final focus2 = FocusNode();
  final focus3 = FocusNode();
  final focus4 = FocusNode();
  final focus5 = FocusNode();
  final focus6 = FocusNode();
  final focus7 = FocusNode();

  TextEditingController? nameController;
  TextEditingController? card1Controller;
  TextEditingController? card2Controller;
  TextEditingController? card3Controller;
  TextEditingController? card4Controller;
  TextEditingController? monthController;
  TextEditingController? dayController;
  TextEditingController? cvv2Controller;

  List<bool> select = [
    false,
    false,
    false,
  ];

  @override
  void initState() {
    nameController = new TextEditingController();
    card1Controller = new TextEditingController();
    card2Controller = new TextEditingController();
    card3Controller = new TextEditingController();
    card4Controller = new TextEditingController();
    monthController = new TextEditingController();
    dayController = new TextEditingController();
    cvv2Controller = new TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    nameController!.dispose();
    card1Controller!.dispose();
    card2Controller!.dispose();
    card3Controller!.dispose();
    card4Controller!.dispose();
    monthController!.dispose();
    dayController!.dispose();
    cvv2Controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey[100],
      body: Container(
          height: myHeight,
          width: myWidth,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: myWidth * 0.08,
                  right: myWidth * 0.08,
                  top: myHeight * 0.04,
                  bottom: myHeight * 0.01,
                ),
                child: Row(
                  children: [
                    Text(
                      'Add New Card',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: myWidth * 0.08,
                ),
                child: Row(
                  children: [
                    Text(
                      'You can add new card and manage it',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: myHeight * 0.04,
              ),
              Expanded(
                child: ListView(
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: myWidth * 0.08,
                              right: myWidth * 0.08,
                              top: myHeight * 0.08),
                          child: Container(
                            height: myHeight * 0.58,
                            width: myWidth * 0.88,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: myHeight * 0.1,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: myWidth * 0.06),
                                  child: Text(
                                    'Your Name',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.grey),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: myWidth * 0.06,
                                      right: myWidth * 0.06,
                                      top: myHeight * 0.01),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: myWidth * 0.03),
                                    decoration: BoxDecoration(
                                        color: Colors.grey[100],
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: TextFormField(
                                      onChanged: (value) {
                                        if (value == '') {
                                          setState(() {
                                            name = 'Your Name';
                                          });
                                        } else {
                                          setState(() {
                                            name = value;
                                          });
                                        }
                                      },
                                      controller: nameController,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          icon: Image.asset(
                                            'assets/6.png',
                                            height: myHeight * 0.025,
                                            color: Color(0xff7847FC),
                                          ),
                                          hintText: 'Please Enter Your Name',
                                          hintStyle: TextStyle(
                                              color: Colors.grey.shade400,
                                              fontSize: 14)),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: myWidth * 0.06,
                                      top: myHeight * 0.02),
                                  child: Text(
                                    'Cardit num',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.grey),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: myWidth * 0.06,
                                      top: myHeight * 0.02,
                                      right: myWidth * 0.06),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      CarditItem(
                                          card1Controller!, focus1, focus2, 4),
                                      CarditItem(
                                          card2Controller!, focus2, focus3, 4),
                                      CarditItem(
                                          card3Controller!, focus3, focus4, 4),
                                      CarditItem(
                                          card4Controller!, focus4, focus5, 4),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: myWidth * 0.06,
                                      top: myHeight * 0.02),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Expiration date',
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.grey),
                                      ),
                                      SizedBox(
                                        width: myWidth * 0.37,
                                      ),
                                      Text(
                                        'cvv2',
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: myWidth * 0.06,
                                      right: myWidth * 0.06,
                                      top: myHeight * 0.02),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          CarditItem(monthController!, focus5,
                                              focus6, 2),
                                          Text(' / '),
                                          CarditItem(dayController!, focus6,
                                              focus7, 2),
                                        ],
                                      ),
                                      CarditItem(
                                          cvv2Controller!, focus7, focus7, 4),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: myWidth * 0.06,
                                      top: myHeight * 0.02),
                                  child: Text(
                                    'Your Wallet',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.grey),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: myWidth * 0.06,
                                      right: myWidth * 0.06,
                                      top: myHeight * 0.02),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              select[0] = !select[0];
                                              select[1] = false;
                                              select[2] = false;
                                            });
                                          },
                                          child: ChoosePriceItem(
                                              '\$ 100.000', false, 0)),
                                      GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              select[1] = !select[1];
                                              select[0] = false;
                                              select[2] = false;
                                            });
                                          },
                                          child: ChoosePriceItem(
                                              '\$ 90.000', false, 1)),
                                      GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              select[2] = !select[2];
                                              select[1] = false;
                                              select[0] = false;
                                            });
                                          },
                                          child: ChoosePriceItem(
                                              '\$ 20.000', false, 2)),
                                      ChoosePriceItem('\$ xxx', true, 3),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: myWidth * 0.18),
                          child: Container(
                            height: myHeight * 0.15,
                            // width: myWidth * 0.9,
                            decoration: BoxDecoration(
                                color: Color(0xff7847FC),
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: myWidth * 0.05,
                                      vertical: myHeight * 0.015),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                        'assets/1.png',
                                        height: myHeight * 0.035,
                                        color: Colors.white,
                                      ),
                                      Container(
                                        // height: myHeight * 0.03,
                                        // width: myWidth * 0.1,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: myWidth * 0.02,
                                            vertical: myHeight * 0.005),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color:
                                                Colors.white.withOpacity(0.5)),
                                        child: Center(
                                            child: Row(
                                          children: [
                                            Text(
                                              monthController!.text == ''
                                                  ? month
                                                  : monthController!.text,
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            Text(
                                              ' / ',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            Text(
                                              dayController!.text == ''
                                                  ? day
                                                  : dayController!.text,
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ],
                                        )),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: myHeight * 0.005,
                                      horizontal: myWidth * 0.1),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        card1Controller!.text == ''
                                            ? card1
                                            : card1Controller!.text,
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.white),
                                      ),
                                      Text(
                                        card2Controller!.text == ''
                                            ? card2
                                            : card2Controller!.text,
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.white),
                                      ),
                                      Text(
                                        card3Controller!.text == ''
                                            ? card3
                                            : card3Controller!.text,
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.white),
                                      ),
                                      Text(
                                        card4Controller!.text == ''
                                            ? card4
                                            : card4Controller!.text,
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: myWidth * 0.05,
                                      vertical: myHeight * 0.02),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        name,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                            fontWeight: FontWeight.normal),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'CVV2: ',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.normal),
                                          ),
                                          Text(
                                            cvv2Controller!.text == ''
                                                ? cvv2
                                                : cvv2Controller!.text,
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.normal),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: myWidth * 0.08, vertical: myHeight * 0.01),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: myHeight * 0.02),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff7847FC),
                  ),
                  child: Center(
                    child: Text(
                      'Add Card',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
              )
            ],
          )),
    ));
  }

  Widget CarditItem(TextEditingController controller, FocusNode myFocus,
      FocusNode nextFocus, int length) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Container(
      width: myWidth * 0.15,
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(10)),
      child: TextFormField(
        keyboardType: TextInputType.number,
        focusNode: myFocus,
        onChanged: (value) {
          if (controller.text.length > 0 &&
              controller.text.length < length + 1) {
            setState(() {});
          }
          if (controller.text.length == length) {
            FocusScope.of(context).requestFocus(nextFocus);
          }
        },
        controller: controller,
        textAlign: TextAlign.center,
        decoration: InputDecoration(border: InputBorder.none, hintText: 'xxxx'),
      ),
    );
  }

  Widget ChoosePriceItem(String price, bool enable, int index) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Container(
      width: myWidth * 0.17,
      decoration: BoxDecoration(
          color: index == 3
              ? Colors.grey[100]
              : select[index] == true
                  ? Color(0xff7847FC)
                  : Colors.grey[100],
          borderRadius: BorderRadius.circular(10)),
      child: TextFormField(
        enabled: enable,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            hintStyle: TextStyle(
                color: index == 3
                    ? Colors.black
                    : select[index] == true
                        ? Colors.white
                        : Colors.black),
            border: InputBorder.none,
            hintText: price),
      ),
    );
  }
}
