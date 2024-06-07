// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mppl/data/data_comunity.dart';
import 'package:mppl/data/data_images.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({Key? key}) : super(key: key);

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 145,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    offset: Offset(0, 4),
                    blurRadius: 4,
                  )
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15, top: 15),
                  child: Text(
                    'Community',
                    style: TextStyle(
                      fontFamily: "PlusJakartaSans",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 45),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 17,
                        width: 74,
                        decoration: BoxDecoration(
                          color: Color(0xFF2FAF7C),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'Featured',
                            style: TextStyle(
                                fontFamily: "PlusJakartaSans",
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        height: 17,
                        width: 74,
                        decoration: BoxDecoration(
                          color: Color(0xFF01A978).withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'Recent',
                            style: TextStyle(
                              fontFamily: "PlusJakartaSans",
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF01A978),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            child: Column(
              children: List.generate(10, (index) {
                return Container(
                  width: 350,
                  height: 300,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(11),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            offset: Offset(0, 4),
                            blurRadius: 4),
                      ]),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 36,
                                  height: 36,
                                  alignment: Alignment.topLeft,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.27),
                                            offset: Offset(1, 1),
                                            blurRadius: 4)
                                      ],
                                      image: DecorationImage(
                                        image: AssetImage(
                                            AppDataImage.profileonCommunity[
                                                index %
                                                    AppDataImage
                                                        .profileonCommunity
                                                        .length]),
                                        fit: BoxFit.cover,
                                      )),
                                ),
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 5),
                                      child: Text(
                                        AppDataComunity.ppleNameonCommunity[
                                            index %
                                                AppDataComunity
                                                    .ppleNameonCommunity
                                                    .length],
                                        style: TextStyle(
                                          fontFamily: "PlusJakartaSans",
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(left: 5, top: 3),
                                      child: Text(
                                        AppDataComunity.waktupostCommunity[
                                            index %
                                                AppDataComunity
                                                    .waktupostCommunity.length],
                                        style: TextStyle(
                                          fontFamily: "PlusJakartaSans",
                                          fontSize: 11,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Padding(
                              padding: EdgeInsets.only(left: 10, right: 15),
                              child: Text(
                                AppDataComunity.tittleCaptionCommunity[index %
                                    AppDataComunity
                                        .tittleCaptionCommunity.length],
                                style: TextStyle(
                                  fontFamily: "PlusJakartaSans",
                                  fontSize: 14,
                                  color: Color(0xFF2FAF7C),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: EdgeInsets.only(left: 10, right: 15),
                              child: Text(
                                AppDataComunity.captionCommunity[index %
                                    AppDataComunity.captionCommunity
                                        .length], // Text tambahan
                                style: TextStyle(
                                  fontFamily: "PlusJakartaSans",
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 20,
                        top: 25,
                        child: Icon(
                          Icons.bookmark_border,
                          size: 20,
                          color: Color(0xFF2FAF7C),
                        ),
                      )
                    ],
                  ),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
