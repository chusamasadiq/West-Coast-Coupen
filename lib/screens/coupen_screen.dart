import 'package:flutter/material.dart';

class CoupenScreen extends StatelessWidget {
  String title;
  String subTitle;
  final String image;
  String expiryDate;
  String coupenType;

  CoupenScreen(
      {required this.title,
      required this.subTitle,
      required this.image,
      required this.expiryDate,
      required this.coupenType});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xfff6f9ff),
          automaticallyImplyLeading: false,
          elevation: 0,
          title: Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.02,
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Color(0xff0d234f),
                  ),
                ),
                const Text(
                  'Coupen',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Adelle ExtraBold',
                    color: Color(0xff0d234f),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/images/coupon_card@3x.png',
                    height: MediaQuery.of(context).size.height * 0.4,
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 55,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              backgroundImage: (NetworkImage(image)),
                              radius: 50,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            title,
                            style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            subTitle,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade300),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 5),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xffffcc66),
                            ),
                            child: Text(coupenType),
                          ),
                          const SizedBox(height: 10),
                          const Divider(
                            color: Colors.white,
                          ),
                          const SizedBox(height: 20),
                          Text(
                            'Valid Till -  $expiryDate',
                            style: const TextStyle(color: Colors.white),
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
      ),
    );
  }
}
