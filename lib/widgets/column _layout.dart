import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';
import '../utils/app_style.dart';

class AppColumn extends StatelessWidget {
  final CrossAxisAlignment align;
  final String firstText;
  final String secondText;
  final bool? isColor;
  const AppColumn(
      {Key? key,
      required this.firstText,
      required this.secondText,
      required this.align,
      this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: align,
      children: [
        Text(
          firstText,
          style: isColor == null
              ? Styles.headLineStyle3.copyWith(color: Colors.black)
              : Styles.headLineStyle3,
        ),
        Gap(AppLayout.getHeight(5)),
        Text(
          secondText,
          style: isColor == null
              ? Styles.headLineStyle4.copyWith(color: Colors.grey)
              : Styles.headLineStyle4,
        ),
      ],
    );
  }
}
