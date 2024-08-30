import 'package:e_learing_app/core/themes/colors.dart';
import 'package:e_learing_app/core/themes/font.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tabler_icons/tabler_icons.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Favorites",
          style: TextStyle(
            fontSize: 20.sp,
            fontFamily: Font.Montserrat,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 94.w,
            // height: 22.h,
            margin: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 4,
                  spreadRadius: 3,
                  offset: const Offset(1, 1),
                ),
                    ],
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    _buildImageCourse(),
                    const SizedBox(width: 10),
                    _buildDescriptionCourse()
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const SizedBox(width: 2),
                        const Icon(Icons.star, color: Colors.yellow),
                        const SizedBox(width: 10),
                        Text(
                          "4.5",
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontFamily: Font.Montserrat,
                          ),
                        ),
                      ],
                    ),

                    Container(
                      width: 35.w,
                      height: 5.h,
                      // margin: EdgeInsets.symmetric( horizontal: 3.w , vertical: 5 ),
                      decoration: BoxDecoration(
                        color: MainColor.primary,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Enroll For Free",
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontFamily: Font.Montserrat,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  _buildImageCourse() {
    return Container(
      width: 30.w,
      height: 14.h,
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  _buildDescriptionCourse() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width:54.w,
          child: Text(
            "iT Automation with Python Professional Certificate",
            style: TextStyle(
              fontSize: 17.sp,
              fontFamily: Font.Montserrat,
            ),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: 54.w,
          height: 30,
          child: Row(
            children: [
              const Icon(TablerIcons.brand_adobe),
              Text("Adobe",
                style: TextStyle(
                  fontSize: 15.sp,
                  fontFamily: Font.Montserrat,
                ),
              )
            ],
          ),
        ),
        Text("24 Lessons",
          style: TextStyle(
            fontSize: 17.sp,
            fontWeight: FontWeight.w500,
            fontFamily: Font.Montserrat,
          ),
        )
      ],
    );
  }
}
