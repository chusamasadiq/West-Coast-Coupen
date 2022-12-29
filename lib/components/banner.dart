import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  BannerWidget({required this.bannerImage});

  final bannerImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        //border: Border.all(color: Colors.white),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(bannerImage),
        ),
      ),
    );
  }
}
