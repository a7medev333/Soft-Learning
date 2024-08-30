import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tabler_icons/tabler_icons.dart';

import '../../../../core/assets/asset_img.dart';
import '../../../../core/themes/colors.dart';
import '../../../../core/themes/font.dart';

Widget buildAppBar() {
  return Container(
    width: 100.w,
    height: 12.h,
    decoration: const BoxDecoration(
      color: Color(0xFF2a52be),
    ),
    padding: EdgeInsets.only(top: 4.h, right: 2.w, left: 2.w),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.apps,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            TablerIcons.search,
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}

Widget buildTitle() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
    child: Text(
      "Hi,A7medFox ☕️",
      style: TextStyle(
        fontFamily: Font.Montserrat,
        fontSize: 20.sp,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}

buildAds() {
  return Container(
    width: 95.w,
    height: 25.h,
    margin: EdgeInsets.symmetric(horizontal: 3.w),
    decoration: BoxDecoration(
      color: MainColor.aero,
      borderRadius: BorderRadius.circular(5),
    ),
    child: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: 92.w,
          height: 17.h,
          decoration: BoxDecoration(
            color: MainColor.argentinanBlue,
            borderRadius: BorderRadius.circular(8),
          ),
          margin: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.5.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 40.w,
                height: 15.h,
                margin: EdgeInsets.symmetric(horizontal: 1.5.w, vertical: 1.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lets Learn More",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                        color: MainColor.white,
                        fontFamily: Font.Montserrat,
                      ),
                    ),
                    SizedBox(height: 3.h),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          color: MainColor.white,
                          fontFamily: Font.Montserrat,
                          fontWeight: FontWeight.w800,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Image.asset(
            AssetImg.graphicLaptop,
            width: 60.w,
            height: 40.h,
            fit: BoxFit.cover,
            // color: Colors.amber,
          ),
        ),
      ],
    ),
  );
}
