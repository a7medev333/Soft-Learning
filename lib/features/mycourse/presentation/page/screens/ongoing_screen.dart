import 'package:e_learing_app/core/themes/colors.dart';
import 'package:e_learing_app/core/themes/font.dart';
import 'package:e_learing_app/features/mycourse/presentation/widgets/course_card_stag_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OngoingScreen extends StatelessWidget {
  const OngoingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildCourseProgressing(),
        // Upcoming Tasks
        _buildUpComingTasks(),
      ],
    );
  }

  Widget _buildCourseProgressing() {
    return Container(
      width: 90.w,
      height: 38.h,
      margin: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
      padding: EdgeInsets.symmetric(horizontal: 0.5.w, vertical: 1.w),
      decoration: const BoxDecoration(
          // color: Colors.deepPurpleAccent
          ),
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, i) {
          return const CourseCardStagWidget();
        },
      ),
    );
  }

  Widget _buildUpComingTasks() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Upcoming Tasks",
            style: TextStyle(
              fontSize: 18.sp,
              fontFamily: Font.Montserrat,
              color: MainColor.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (_, i) {
              return ListTile(

                leading: const CircleAvatar(
                  radius: 28,
                ),
                title: Text(
                  "Create Low Fidelity wireframe",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w900,
                    fontFamily: Font.Reemkufi,
                  ),
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "User Interface Design For Beginner",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: Font.Reemkufi,
                        color: MainColor.black
                      ),
                    ),
                    Text(
                      "Fri 10 May",
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: Font.Reemkufi,
                      ),
                    )
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
