import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_style.dart';
import 'package:booktickets/widgets/text_widget.dart';
import 'package:booktickets/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/icon_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text("What are\nyou looking for?",
                style: Styles.headLineStyle
                    .copyWith(fontSize: AppLayout.getWidth(35))),
            Gap(AppLayout.getHeight(20)),
            AppTicketApp(firstTab: 'Aireline time', secondTab: 'Hotels'),
            Gap(AppLayout.getHeight(25)),
            const AppIcon(
                icon: Icons.flight_takeoff_rounded, text: "Departure"),
            Gap(AppLayout.getHeight(15)),
            const AppIcon(icon: Icons.flight_land_rounded, text: "Arrival"),
            Gap(AppLayout.getHeight(25)),
            // Container(
            //     padding: EdgeInsets.symmetric(
            //         vertical: AppLayout.getWidth(18),
            //         horizontal: AppLayout.getHeight(15)),
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
            //       color: const Color(0XD91130CE),
            //     ),
            //     child: Row(
            //       children: [
            //         Center(
            //           child: Padding(
            //             padding: const EdgeInsets.only(left: 110.0),
            //             child: Text(
            //               "Find tickets",
            //               style: Styles.textStyle.copyWith(color: Colors.white),
            //             ),
            //           ),
            //         ),
            //       ],
            //     )),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: AppLayout.getWidth(18),
                horizontal: AppLayout.getHeight(15),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
                color: const Color(0XD91130CE), // Set color within decoration
              ),
              child: Row(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 110.0),
                      child: Text(
                        "Find tickets",
                        style: Styles.textStyle.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Gap(AppLayout.getHeight(15)),
            AppDoubleWidget(bigText: "Upcoming Flight", smallText: "View all"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: AppLayout.getHeight(425),
                    width: size.width * 0.42,
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(15),
                        vertical: AppLayout.getWidth(15)),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 1,
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: Column(children: [
                      Container(
                          height: AppLayout.getHeight(190),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(12)),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage("assets/images/hotelimg1.jpg")),
                          )),
                      Text(
                        "20% discount on the early booking of this flight,Don't miss ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500
                            // style:Styles.textStyle,
                            ),
                      ),
                    ])),
                Column(
                  children: [
                    Stack(children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(200),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(18)),
                          color: Color(0XFF3Ab8B8),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(15),
                            horizontal: AppLayout.getWidth(15)),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Discount\nfor survey",
                                style: Styles.headLineStyle2.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Gap(AppLayout.getHeight(10)),
                              Text(
                                "Take the survey about our services and get a discount",
                                style: Styles.headLineStyle2.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontSize: 16),
                              ),
                            ] // Text('),
                            ),
                        // child: Column(
                        //     crossAxisAlignment: CrossAxisAlignment.start,
                        //     children: [
                        //       Text(
                        //         "Discount\nfor survey",
                        //         style: Styles.headLineStyle2.copyWith(
                        //             fontWeight: FontWeight.bold,
                        //             color: Colors.white),
                        //       ),
                        //       Gap(AppLayout.getHeight(10)),
                        //       Text(
                        //         "Take the survey about our services and get a discount",
                        //         style: Styles.headLineStyle2.copyWith(
                        //             fontWeight: FontWeight.w500,
                        //             color: Colors.white,
                        //             fontSize: 16),
                        //       ),
                        //     ] // Text('),
                        //     ),
                      ),
                      Positioned(
                          right: -45,
                          top: -40,
                          child: Container(
                            padding: EdgeInsets.all(AppLayout.getHeight(30)),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.transparent,
                                border: Border.all(
                                  width: 18,
                                  color: Color(0XFF18999),
                                )),
                          )),
                    ]),
                    // Gap(AppLayout.getHeight(15)),
                    Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(210),
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(15),
                            horizontal: AppLayout.getWidth(15)),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(18)),
                          color: const Color(0XFFEC6545),
                        ),
                        child: Column(children: [
                          Text("Take love",
                              style: Styles.headLineStyle2.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center),
                          Gap(AppLayout.getHeight(15)),
                          RichText(
                              text: const TextSpan(children: [
                            TextSpan(
                              text: '',
                              style: TextStyle(fontSize: 38),
                            ),
                            TextSpan(
                              text: '',
                              style: TextStyle(fontSize: 50),
                            ),
                            TextSpan(
                              text: '',
                              style: TextStyle(fontSize: 38),
                            ),
                            TextSpan(
                              text: '',
                              style: TextStyle(fontSize: 38),
                            ),
                          ]))
                        ]))
                  ],
                )
              ],
            )
          ]),
    );
  }
}
