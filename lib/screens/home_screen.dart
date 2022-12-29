import 'package:flutter/material.dart';
import 'package:west_coast_coupons/components/banner.dart';
import 'package:west_coast_coupons/screens/products_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> iconList = [
    'assets/images/accessories_icon@3x.png',
    'assets/images/amazon_icon@3x.png',
    'assets/images/baby_and_toddler_icon@3x.png',
    'assets/images/electronics_icon@3x.png',
    'assets/images/entertainment_and_arts_icon@3x.png',
    'assets/images/financial_services_icon@3x.png',
    'assets/images/fitness_and_health_icon@3x.png',
    'assets/images/hair_and_beauty_icon@3x.png',
    'assets/images/home_services_icon@3x.png',
    'assets/images/home_and_garden_icon@3x.png',
    'assets/images/motoring_icon@3x.png',
  ];
  List<String> titleList = [
    'Accessories',
    'Amazon',
    'Baby and Toddler',
    'Electronics',
    'Entertainment and Arts',
    'Financial Services ',
    'Fitness and Health',
    'Hear and Beauty',
    'Home Services',
    'Home and Garden',
    'Monitoring',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image(
                  image: const AssetImage(
                      'assets/images/explore_background_top@3x.png'),
                  width: MediaQuery.of(context).size.width,
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.05,
                  left: MediaQuery.of(context).size.height * 0.04,
                  child: const Text(
                    'Explore',
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Adelle ExtraBold',
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.09,
                  left: MediaQuery.of(context).size.height * 0.04,
                  child: const Text(
                    'Latest deals and discounts',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Adelle Regular',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.15,
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        BannerWidget(
                            bannerImage: 'assets/images/explore_banner@3x.png'),
                        BannerWidget(
                            bannerImage: 'assets/images/store_image@3x.png'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.height * 0.05,
                top: MediaQuery.of(context).size.height * 0.03,
                bottom: MediaQuery.of(context).size.height * 0.018,
              ),
              child: const Text(
                'Categories',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Adelle ExtraBold',
                  color: Color(0xff0d234f),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: iconList.length,
                itemBuilder: (BuildContext context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.height * 0.05,
                      vertical: MediaQuery.of(context).size.height * 0.01,
                    ),
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductScreen(
                            categoryTitle: titleList[index],
                          ),
                        ),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border:
                              Border.all(color: Colors.black12, width: 0.75),
                        ),
                        child: SizedBox(
                          child: Row(
                            children: [
                              Image.asset(
                                iconList[index],
                                scale: 3.2,
                              ),
                              const SizedBox(width: 12),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  titleList[index],
                                  style: const TextStyle(
                                    fontFamily: 'Adelle Bold',
                                    fontSize: 20,
                                    color: Color(0xff0D234F),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
