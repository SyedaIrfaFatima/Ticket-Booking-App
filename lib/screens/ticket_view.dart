import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_style.dart';
import 'package:booktickets/widgets/column%20_layout.dart';
import 'package:booktickets/widgets/layout_builder_widget.dart';
import 'package:booktickets/widgets/thick_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket, required this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
        width: size.width * 0.85,
        height: AppLayout.getHeight(GetPlatform.isAndroid == true ? 167 : 169),
        child: Container(
          margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
          child: Column(children: [
            //showing blue part of the ticket
            Container(
                decoration: BoxDecoration(
                    color: isColor == null ? Color(0XFF526799) : Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppLayout.getHeight(21)),
                      topRight: Radius.circular(21),
                    )),
                padding: EdgeInsets.all(AppLayout.getHeight(16)),
                child: Column(
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(ticket['from']['code'],
                            style: isColor == null
                                ? Styles.headLineStyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle3),
                        Expanded(child: Container()),
                        ThickContainer(isColor: true),
                        Expanded(
                          child: Stack(children: [
                            SizedBox(
                                height: AppLayout.getHeight(24),
                                child: AppLayoutBuilderWidget(
                                  sections: 8,
                                  width: 9,
                                )),
                            Center(
                              child: Transform.rotate(
                                  angle: 1.5,
                                  child: Icon(Icons.local_airport_rounded,
                                      color: isColor == null
                                          ? Colors.white
                                          : Color(0XFF8ACC7F))),
                            ),
                          ]),
                        ),
                        ThickContainer(isColor: true),
                        Expanded(child: Container()),
                        Text(
                          ticket['to']['code'],
                          style: isColor == null
                              ? Styles.headLineStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle3,
                        ),
                      ],
                    ),
                    const Gap(1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: AppLayout.getWidth(100),
                            child: Text(
                              ticket['from']['name'],
                              style: isColor == null
                                  ? Styles.headLineStyle4
                                      .copyWith(color: Colors.white)
                                  : Styles.headLineStyle4,
                            )),
                        Text(ticket['flying_time'],
                            style: isColor == null
                                ? Styles.headLineStyle4
                                    .copyWith(color: Colors.black)
                                : Styles.headLineStyle4),
                        SizedBox(
                            width: 100,
                            child: Text(
                              ticket['from']['name'],
                              textAlign: TextAlign.end,
                              style: isColor == null
                                  ? Styles.headLineStyle4
                                      .copyWith(color: Colors.white)
                                  : Styles.headLineStyle4,
                            )),
                      ],
                    )
                  ],
                )),
            //showing orange part of the ticket
            Container(
              color: isColor == null ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                      height: AppLayout.getHeight(20),
                      width: AppLayout.getWidth(10),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            )),
                      )),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Expanded(child: LayoutBuilder(builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                                (constraints.constrainWidth() / 15).floor(),
                                (index) => SizedBox(
                                    width: 5,
                                    height: 1,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: isColor == null
                                            ? Colors.white
                                            : Colors.grey.shade300,
                                      ),
                                    ))));
                      })),
                    ),
                  ),
                  SizedBox(
                      height: 20,
                      width: 20,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: isColor == null
                                ? Styles.orangeColor
                                : Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            )),
                      )),
                ],
              ),
            ),
            //bottom  orange part of the ticket
            Container(
              decoration: BoxDecoration(
                  color: isColor == null ? Styles.orangeColor : Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(isColor == null ? 21 : 0),
                    bottomRight: Radius.circular(isColor == null ? 21 : 0),
                  )),
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumn(
                        firstText: ticket['date'],
                        secondText: "Date",
                        align: CrossAxisAlignment.start,
                        isColor: isColor,
                      ),

                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     Text(
                      //       ticket['date'],
                      //       style: isColor == null
                      //           ? Styles.headLineStyle3
                      //               .copyWith(color: Colors.white)
                      //           : Styles.headLineStyle3,
                      //     ),
                      //     Text(
                      //       "Date",
                      //       style: isColor == null
                      //           ? Styles.headLineStyle4
                      //               .copyWith(color: Colors.white)
                      //           : Styles.headLineStyle4,
                      //     ),
                      //   ],
                      // ),
                      Gap(5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Text(
                          //   ticket['departure_time'],
                          //   style: isColor == null
                          //       ? Styles.headLineStyle3
                          //           .copyWith(color: Colors.white)
                          //       : Styles.headLineStyle3,
                          // ),
                          // Text(
                          //   "Departure time",
                          //   style: isColor == null
                          //       ? Styles.headLineStyle4
                          //           .copyWith(color: Colors.white)
                          //       : Styles.headLineStyle4,
                          // ),
                          AppColumn(
                            firstText: ticket['departure_time'],
                            secondText: "Departure time",
                            align: CrossAxisAlignment.center,
                            isColor: isColor,
                          ),
                        ],
                      ),
                      Gap(5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "90",
                            // ticket['number'],
                            style: isColor == null
                                ? Styles.headLineStyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle3,
                          ),
                          Text(
                            "Number",
                            style: isColor == null
                                ? Styles.headLineStyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle4,
                          ),
                          // AppColumn(
                          //   firstText: ticket["90"],
                          //   secondText: "Number",
                          //   align: CrossAxisAlignment.end,
                          //   isColor: false,
                          // ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ]),
        ));
  }
}
