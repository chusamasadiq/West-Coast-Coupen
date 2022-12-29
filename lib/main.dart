import 'package:flutter/material.dart';
import 'package:west_coast_coupons/screens/splash_screen.dart';

void main() {
  runApp(const WestCoastCoupons());
}

class WestCoastCoupons extends StatelessWidget {
  const WestCoastCoupons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xfff6f9ff),
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
