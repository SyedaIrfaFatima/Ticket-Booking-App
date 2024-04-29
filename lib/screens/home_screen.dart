import 'package:booktickets/screens/hotel_screen.dart';
import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_style.dart';
import 'package:booktickets/widgets/text_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
              const Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good Morning",
                        style: Styles.headLineStyle3,
                      ),
                      const Gap(5),
                      Text(
                        "Books Tickets",
                        style: Styles.headLineStyle,
                      ),
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            filterQuality: FilterQuality.high,
                            image:
                                AssetImage("assets/images/booking logo.png"))),
                  )
                ],
              ),
              const Gap(25),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0XFFF4F6FD)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Row(
                  children: [
                    const Icon(
                      FluentSystemIcons.ic_fluent_search_regular,
                      color: Color(0XFFBFC203),
                    ),
                    Text(
                      "Search",
                      style: Styles.headLineStyle4,
                    ),
                  ],
                ),
              ),
              const Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppDoubleWidget(
                      bigText: "Upcoming Flights", smallText: "View all")
                ],
              ),
            ]),
          ),
          const Gap(15),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: ticketList
                    .map((singleTicket) => TicketView(
                          ticket: singleTicket,
                          isColor: null,
                        ))
                    .toList(),
              )),
          const Gap(15),
          // Container(
          //   padding: EdgeInsets.symmetric(horizontal: 20),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Text(
          //         "Hotels",
          //         style: Styles.headLineStyle2,
          //       ),
          //       InkWell(
          //         onTap: () {
          //           print("you are trapped");
          //         },
          //         child: Text(
          //           "View all ",
          //           style:
          //               Styles.textStyle.copyWith(color: Styles.primaryColor),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child:
                const AppDoubleWidget(bigText: "Hotel", smallText: "View all"),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: hotelList
                  .map((singleHotel) => HotelScreen(hotel: singleHotel))
                  .toList(),
            ),
          )
        ]));
  }
}
