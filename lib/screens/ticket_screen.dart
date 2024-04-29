import 'package:barcode_widget/barcode_widget.dart';
import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_style.dart';
import 'package:booktickets/widgets/column%20_layout.dart';
import 'package:booktickets/widgets/layout_builder_widget.dart';
import 'package:booktickets/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_info_list.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: Stack(
          children: [
            ListView(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(20),
                    vertical: AppLayout.getHeight(20)),
                children: [
                  Gap(AppLayout.getHeight(40)),
                  Text(
                    "Tickets",
                    style: Styles.headLineStyle.copyWith(color: Colors.white),
                  ),
                  Gap(AppLayout.getHeight(20)),
                  AppTicketApp(firstTab: 'Upcoming', secondTab: 'Previous'),
                  Gap(AppLayout.getHeight(20)),
                  Container(
                    padding: EdgeInsets.only(left: AppLayout.getHeight(20)),
                    child: TicketView(
                      ticket: ticketList[1],
                      isColor: true,
                    ),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 18),
                      margin: EdgeInsets.symmetric(horizontal: 17),
                      color: Colors.white,
                      width: AppLayout.getWidth(10),
                      child: Column(children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppColumn(
                                firstText: 'Flutter DB',
                                secondText: 'Passenger',
                                align: CrossAxisAlignment.start,
                                isColor: false,
                              ),
                              AppColumn(
                                  firstText: '5778 783892',
                                  secondText: 'passport',
                                  align: CrossAxisAlignment.end,
                                  isColor: false),
                            ]),
                        Gap(AppLayout.getHeight(20)),
                        AppLayoutBuilderWidget(
                          sections: 15,
                          width: 5,
                          isColor: false,
                        ),
                        Gap(AppLayout.getHeight(20)),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppColumn(
                                firstText: '364738 28274478',
                                secondText: 'Number of E-ticket',
                                align: CrossAxisAlignment.start,
                                isColor: false,
                              ),
                              AppColumn(
                                firstText: ' B2SG28',
                                secondText: 'Booking code',
                                align: CrossAxisAlignment.end,
                                isColor: false,
                              ),
                            ]),
                        Gap(AppLayout.getHeight(20)),
                        AppLayoutBuilderWidget(
                          sections: 15,
                          width: 5,
                          isColor: false,
                        ),
                        Gap(AppLayout.getHeight(20)),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Row(children: [
                                    Image.asset(
                                      "assets/images/visa.png",
                                      scale: 15,
                                    ),
                                    Text(" *** 2463",
                                        style: Styles.headLineStyle3),
                                  ]),
                                  Text("Payment method",
                                      style: Styles.headLineStyle4),
                                ],
                              ),
                              AppColumn(
                                firstText: '\$249.99',
                                secondText: 'price ',
                                align: CrossAxisAlignment.end,
                              ),
                            ]),
                      ])),
                  SizedBox(
                    height: 1,
                  ),

                  // barcode
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomRight:
                                Radius.circular(AppLayout.getHeight(21)),
                            bottomLeft:
                                Radius.circular(AppLayout.getHeight(21)))),
                    margin: EdgeInsets.only(
                        left: (AppLayout.getHeight(15)),
                        right: (AppLayout.getHeight(15))),
                    padding: EdgeInsets.only(
                      top: (AppLayout.getHeight(20)),
                      bottom: (AppLayout.getHeight(20)),
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: AppLayout.getHeight(15)),
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(15)),
                        child: BarcodeWidget(
                          data:
                              'https://github.com/SyedaIrfaFatima/coursera.git',
                          drawText: false,
                          color: Styles.orangeColor,
                          width: double.infinity,
                          barcode: Barcode.code128(),
                          height: 70,
                        ),
                      ),
                    ),
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Container(
                    padding: EdgeInsets.only(left: AppLayout.getHeight(20)),
                    child: TicketView(
                      ticket: ticketList[0],
                      isColor: null,
                    ),
                  ),
                ]),
            Positioned(
              left: AppLayout.getHeight(19),
              top: AppLayout.getHeight(295),
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Styles.textColor, width: 2)),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              ),
            ),
            Positioned(
              right: AppLayout.getHeight(19),
              top: AppLayout.getHeight(295),
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Styles.textColor, width: 2)),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              ),
            ),
          ],
        ));
  }
}
