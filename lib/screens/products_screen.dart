import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:west_coast_coupons/screens/coupen_screen.dart';
import '../Models/Product.dart';
import 'dart:convert';

class ProductScreen extends StatefulWidget {
  late String categoryTitle;

  ProductScreen({super.key, required this.categoryTitle});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  Future<List<Product>> getProductsList() async {
    var response = await http
        .get(Uri.parse('https://westcoastcoupons.co.uk/fetch-coupons/'));
    if (response.statusCode == 200) {
      if (response.body.isNotEmpty) {
        List jsonResponse = jsonDecode(response.body.toString());

        return jsonResponse
            .map((products) => Product.fromJson(products))
            .toList();
      } else {
        throw Exception('API has no data');
      }
    } else {
      throw Exception('Server Error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.03,
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.height * 0.01,
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
                    Text(
                      widget.categoryTitle,
                      style: const TextStyle(
                        fontSize: 24,
                        fontFamily: 'Adelle ExtraBold',
                        color: Color(0xff0d234f),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: FutureBuilder<List<Product>>(
                  future: getProductsList(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List<Product>? products = snapshot.data;
                      return ListView.builder(
                        itemCount: products!.length,
                        itemBuilder: (BuildContext context, index) {
                          return widget.categoryTitle ==
                                  products[index].categoryName.toString()
                              ? Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.height *
                                            0.03,
                                    vertical:
                                        MediaQuery.of(context).size.height *
                                            0.01,
                                  ),
                                  child: GestureDetector(
                                    onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => CoupenScreen(
                                          title: products[index]
                                              .storeName
                                              .toString(),
                                          subTitle: products[index]
                                              .couponName
                                              .toString(),
                                          image: products[index]
                                              .storeImage!
                                              .guid
                                              .toString(),
                                          expiryDate: products[index]
                                              .expiryDate
                                              .toString(),
                                          coupenType: products[index]
                                              .couponType
                                              .toString(),
                                        ),
                                      ),
                                    ),
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            color: Colors.black12, width: 0.75),
                                      ),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: Image.network(
                                              products[index]
                                                  .storeImage!
                                                  .guid
                                                  .toString(),
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.3,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.2,
                                            ),
                                          ),
                                          Expanded(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  products[index]
                                                      .storeName
                                                      .toString(),
                                                  style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                    color: Color(0xff0d234f),
                                                  ),
                                                ),
                                                const SizedBox(height: 10),
                                                Text(
                                                  products[index]
                                                      .couponName
                                                      .toString(),
                                                  style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16,
                                                    color: Color(0xff0d234f),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 10, right: 20),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        products[index]
                                                            .expiryDate
                                                            .toString(),
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors
                                                              .grey.shade400,
                                                        ),
                                                      ),
                                                      Text(
                                                        products[index]
                                                            .couponType
                                                            .toString(),
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors
                                                              .grey.shade400,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              : Container();
                        },
                      );
                    } else if (snapshot.hasError) {
                      return Text(snapshot.error.toString());
                    }
                    return const Center(child: CircularProgressIndicator());
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
