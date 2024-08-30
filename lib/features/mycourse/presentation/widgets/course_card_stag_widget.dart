import 'package:e_learing_app/core/themes/colors.dart';
import 'package:e_learing_app/core/themes/font.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tabler_icons/tabler_icons.dart';

class CourseCardStagWidget extends StatelessWidget {
  const CourseCardStagWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65.w,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      margin: EdgeInsets.all(0.5.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 1,
            spreadRadius: 3,
            offset: const Offset(1, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 25.w,
            height: 12.h,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage(
                    "assets/img/graphic-designer-working-on-laptop-3d-illustration-download-in-png-blend-fbx-gltf-file-formats--illustrator-logo-project-pack-design-development-illustrations-6380688.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: 60.w,
            child: Text(
              "User Interface Design for Beginner",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontFamily: Font.Montserrat,
                fontSize: 18.sp,
                color: MainColor.black,
              ),
            ),
          ),
          const SizedBox(height: 10),
          _courseProgress(),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.bottomRight,
            child: _buttonNext(),
          ),
        ],
      ),
    );
  }

  _courseProgress() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Course Progress",
          style: TextStyle(
            fontFamily: Font.Montserrat,
            color: MainColor.black,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 4),
        SizedBox(
          width: 50.w,
          child: LinearProgressIndicator(
            value: 17 / 20,
            borderRadius: BorderRadius.circular(5),
            backgroundColor: Colors.grey[500],
            valueColor:
                const AlwaysStoppedAnimation<Color>(Colors.deepPurpleAccent),
            minHeight: 5,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          "Step 17/20",
          style: TextStyle(
            fontSize: 15.sp,
            color: MainColor.black,
            fontWeight: FontWeight.w800,
            fontFamily: Font.Fustat,
          ),
        )
      ],
    );
  }

  _buttonNext() {
    return Container(
      width: 20.w,
      height: 4.h,
      padding: const EdgeInsets.all(5),
      child: Row(
        children: [
          Text(
            "Next",
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: MainColor.primary,
              fontFamily: Font.Montserrat,
            ),
          ),
          const SizedBox(width: 4),
          Icon(
            TablerIcons.player_play_filled,
            color: MainColor.primary,
          ),
        ],
      ),
    );
  }
}
