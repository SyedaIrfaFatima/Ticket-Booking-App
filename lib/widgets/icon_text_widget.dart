import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIcon({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
            vertical: AppLayout.getWidth(12),
            horizontal: AppLayout.getHeight(12)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: const Color(0XFFBFC2DF),
            ),
            Gap(AppLayout.getWidth(10)),
            Text(text, style: TextStyle(color: Colors.black)),
          ],
        ));
  }
}
