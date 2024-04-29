import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_style.dart';
import 'package:booktickets/widgets/column%20_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getWidth(86),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(10)),
                    image: DecorationImage(
                        image: AssetImage("assets/images/booking logo.png"))),
              ),
              Gap(AppLayout.getHeight(2)),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("Book Tickets", style: Styles.headLineStyle),
                Gap(AppLayout.getHeight(2)),
                Text("New_York",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500)),
                Gap(AppLayout.getHeight(8)),
                Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(100)),
                    color: const Color(0XFFFEF4F3),
                  ),
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getHeight(3),
                      vertical: AppLayout.getHeight(2)),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color(0XFF526799)),
                        child: Icon(
                          FluentSystemIcons.ic_fluent_shield_filled,
                          color: Colors.white,
                          size: 10,
                        ),
                      ),
                      Gap(AppLayout.getHeight(5)),
                      Text("Premium Status",
                          style: Styles.textStyle
                              .copyWith(color: Colors.black, fontSize: 12)),
                    ],
                  ),

                  // child: Column(children: [
                  //   Text("Premium Status", style: Styles.textStyle),
                  // ]),
                ),
              ]),
              const Spacer(),
              Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                InkWell(
                  onTap: () {
                    print("you are tapped");
                  },
                  child: Text("Edit",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500)),
                ),
              ])
            ]),
            Gap(AppLayout.getHeight(8)),
            Divider(color: Colors.grey.shade300),
            Gap(AppLayout.getHeight(8)),
            Stack(children: [
              Container(
                height: AppLayout.getHeight(80),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                  color: Styles.primaryColor,
                ),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(30)),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 18, color: Color(0XFF264CD2)),
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(20),
                    vertical: AppLayout.getHeight(16)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        child: Icon(
                          FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                          color: Styles.primaryColor,
                          size: 27,
                        ),
                        maxRadius: 25,
                        backgroundColor: Colors.white,
                      ),
                      Gap(AppLayout.getHeight(12)),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("You've got a new award",
                              style: Styles.headLineStyle3.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          Text("You have 95 flights in a year",
                              style: Styles.textStyle.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white.withOpacity(0.9),
                                  fontSize: 16)),
                        ],
                      )
                    ]),
              ),

              //     Container(
              //       padding: EdgeInsets.all(16),
              //       decoration: BoxDecoration(
              //         shape: BoxShape.circle,
              //         color: Colors.white,
              //       ),
              //       child: Icon(
              //         FluentSystemIcons.ic_fluent_shield_filled,
              //         color: Colors.blue,
              //         size: 14,
              //       ),
              //     ),
              //     Text(
              //       "You've got a new award",
              //       style: Styles.headLineStyle2,
              //     ),
              //   ],
              // ),
            ]),
            Gap(AppLayout.getHeight(25)),
            Text("Accumulative miles",
                style: Styles.headLineStyle2.copyWith(color: Colors.black)),
            Gap(AppLayout.getHeight(15)),
            Container(
                padding:
                    EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppLayout.getWidth(18)),
                    color: Styles.bgColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 4,
                        spreadRadius: 1,
                      )
                    ]),
                child: Column(children: [
                  Gap(AppLayout.getHeight(15)),
                  Text("198789",
                      style: Styles.headLineStyle3.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 45)),
                  Gap(AppLayout.getHeight(15)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Miles accrued",
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.black)),
                      Text("1st December 2023",
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.black)),
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Divider(color: Colors.grey.shade300),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumn(
                          firstText: "23 042",
                          secondText: "Miles",
                          align: CrossAxisAlignment.start),
                      AppColumn(
                          firstText: "Airline CO",
                          secondText: "Recieved from",
                          align: CrossAxisAlignment.end),
                    ],
                  ),
                  Divider(color: Colors.grey.shade300),
                  Gap(AppLayout.getHeight(15)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumn(
                          firstText: "24",
                          secondText: "Miles",
                          align: CrossAxisAlignment.start),
                      AppColumn(
                          firstText: "McDonal's",
                          secondText: "Recieved from",
                          align: CrossAxisAlignment.end),
                    ],
                  ),
                  Divider(color: Colors.grey.shade300),
                  Gap(AppLayout.getHeight(15)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumn(
                          firstText: "52 987",
                          secondText: "Miles",
                          align: CrossAxisAlignment.start),
                      AppColumn(
                          firstText: "Excuma",
                          secondText: "Recieved from",
                          align: CrossAxisAlignment.end),
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Divider(color: Colors.grey.shade300),
                  Text("how to get more miles",
                      style: Styles.textStyle.copyWith(color: Colors.grey)),
                ]))
          ]),
    );
  }
}
