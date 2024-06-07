// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mppl/contrains/text_strings.dart';
import 'package:mppl/data/data_comunity.dart';
import 'package:mppl/data/data_images.dart';
import 'package:mppl/detail_pages/detail_hewani.dart';
import 'package:mppl/detail_pages/detail_nabati.dart';
import 'package:mppl/image_viewer_helper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
            padding: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xFF11A168),
                  Color(0xFF4CEC79),
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      offset: Offset(0, 4),
                      blurRadius: 4)
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        height: 55,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search,
                                  size: 25,
                                  color: Colors.black.withOpacity(0.5)),
                              hintText: 'Search here ...',
                              hintStyle: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                                fontFamily: "PlusJakartaSans",
                                fontSize: 12,
                              ),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 10),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    CircleAvatar(
                      radius: 26,
                      backgroundImage: AssetImage('assets/img/pprofile6.jpg'),
                    ),
                  ],
                ),
                SizedBox(height: 11),
                Padding(
                    padding: EdgeInsets.only(left: 5, bottom: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hallo,",
                          style: TextStyle(
                            fontFamily: "PlusJakartaSans",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 1),
                        Text(
                          tProfileHeading,
                          style: TextStyle(
                              fontFamily: "PlusJakartaSans",
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                        SizedBox(height: 5)
                      ],
                    )),
              ],
            )),

        //Inner Style Indicators Banner Slider
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(
                height: 250,
                width: double.infinity,
                child: Stack(alignment: Alignment.center, children: [
                  CarouselSlider(
                    items: AppDataImage.innerStyleImages.map((imagePath) {
                      return Builder(
                        builder: (BuildContext context) {
                          return ImageViewerHelper.show(
                            context: context,
                            url: imagePath,
                            fit: BoxFit.cover,
                          );
                        },
                      );
                    }).toList(),
                    options: CarouselOptions(
                        enlargeCenterPage: true,
                        autoPlay: true,
                        enableInfiniteScroll: true,
                        viewportFraction: 0.9),
                  )
                ]),
              )
            ],
          ),
        ),

        //Menu Items
        SizedBox(height: 30),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nabati',
                style: TextStyle(
                    fontFamily: "", fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 10),
              _buildClickableBox('assets/img/ragammakan.jpg', () {
                Get.to(() => DetailNabati());
              }),
            ],
          ),
        ),
        SizedBox(height: 30),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hewani',
                style: TextStyle(
                    fontFamily: "", fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 10),
              _buildClickableBox('assets/img/seafood.jpg', () {
                Get.to(() => DetailHewani());
              }),
            ],
          ),
        ),

        SizedBox(height: 40),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Comunity',
                style: TextStyle(
                  fontFamily: "PlusJakartaSans",
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(10, (index) {
                    return Container(
                      width: 140,
                      height: 180,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Color(0xFFC6C6C6),
                            width: 0.5,
                          )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    offset: Offset(0, 2),
                                    blurRadius: 4)
                              ],
                              image: DecorationImage(
                                image: AssetImage(AppDataImage.circleImages[
                                    index % AppDataImage.circleImages.length]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            AppDataComunity.comunityNames[
                                index % AppDataComunity.comunityNames.length],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "PlusJakartaSans",
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(height: 7),
                          Container(
                            width: 80,
                            height: 30,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: Color(0xFF01A978),
                                width: 0.5,
                              ),
                            ),
                            child: Text(
                              'Ikuti',
                              style: TextStyle(
                                  fontFamily: "PlusJakartaSans",
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF01A978)),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 30)
      ],
    ));
  }

  Widget _buildClickableBox(String imagePath, VoidCallback onPressed) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
            onTap: onPressed,
            child: Container(
              width: double.infinity,
              height: 110,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        offset: Offset(0, 4),
                        blurRadius: 4)
                  ]),
            ))
      ],
    );
  }
}
