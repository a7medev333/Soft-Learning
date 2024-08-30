

import 'package:e_learing_app/core/enums/course_status.dart';
import 'package:e_learing_app/core/themes/font.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TabWidget extends StatelessWidget {
  final Function() onToggle;
  final CourseStatus status;
  // {required Function() onToggle,required CourseStatus status}
  const TabWidget({super.key, required this.onToggle, required this.status});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 85.w,
        height: 6.h,
        padding: const EdgeInsets.all(5),
        margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 1.h),
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(30),
        ),
        child:
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          _statusCourse(text: "Ongoing", onToggle: onToggle, state: CourseStatus.Ongoing,real:status ),
          _statusCourse(text: "Completed", onToggle: onToggle, state: CourseStatus.Completed,real: status ),
        ],),
      ),
    );
  }
}

_statusCourse(
    {required String text, required Function() onToggle, required CourseStatus state,required CourseStatus real}) {
  return InkWell(
    onTap: onToggle,
    child: Container(
      width: 40.w,
      height: 5.h,
      decoration: BoxDecoration(
        color: state == real ? Colors.white : Colors.transparent,
        borderRadius: BorderRadius.circular(20),
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
          fontFamily: Font.Montserrat,
          fontWeight: FontWeight.w600,
          fontSize: 17.sp,
        ),
      ),
    ),
  );
}