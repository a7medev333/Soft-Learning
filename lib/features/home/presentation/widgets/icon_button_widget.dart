

import 'package:e_learing_app/core/enums/tabs.dart';
import 'package:e_learing_app/core/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class IconButtonWidget extends StatelessWidget {
  // {required IconData icon, required Null Function() onTap, required TabMenu tab}
  final Function() onTap;
  final IconData icon;
  final TabMenu tab;
  final TabMenu selectMenu;
  const IconButtonWidget({super.key, required this.onTap, required this.icon, required this.tab, required this.selectMenu});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 20.w,
        height: 7.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color:selectMenu==tab? MainColor.primary : Colors.transparent,
        ),
        alignment: Alignment.center,
        // padding: const EdgeInsets.symmetric(horizontal: 2,vertical: 10),
        // margin: EdgeInsets.symmetric(horizontal: 3.w),
        child: Icon(
          icon,
          size: 8.w,
          color: selectMenu==tab? Colors.white : Colors.black,
        ),
      ),
    );
  }
}
