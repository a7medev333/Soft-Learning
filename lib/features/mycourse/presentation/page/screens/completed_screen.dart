import 'package:e_learing_app/core/themes/colors.dart';
import 'package:e_learing_app/core/themes/font.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tabler_icons/tabler_icons.dart';

class CompletedScreen extends StatelessWidget {
  const CompletedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      physics: const ClampingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (_, i) {
        return Container(
          width: 80.w,
          height: 20.h,
          margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 0.8.h),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            // border: Border.all( color: Colors.blueGrey, ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 4,
                offset: const Offset(1, 1),
              ),
            ],
            color: MainColor.white,
          ),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildCourseName(),
                      const SizedBox(height: 10),
                      _buildChannelName(),
                    ],
                  ),
                ],
              ),
              //-----
              const SizedBox(height: 10),
              //Bottom
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Rate",
                    style: TextStyle(
                      fontFamily: Font.Montserrat,
                      fontSize: 15.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(width: 10),
                  _buildButtonCertificate(),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  _buildChannelName() {
    return SizedBox(
      width: 30.w,
      height: 30,
      child: const Row(
        children: [
          Icon(Icons.fingerprint),
          SizedBox(width: 5),
          Text("Info Touch"),
        ],
      ),
    );
  }

  _buildCourseName() {
    return SizedBox(
      width: 57.w,
      child: Text(
        "Foundations of User  Experience ( UX ) Design ",
        style: TextStyle(
          fontFamily: Font.Montserrat,
          color: MainColor.black,
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  _buildButtonCertificate() {
    return Container(
      width: 33.w,
      height: 5.h,
      margin: EdgeInsets.symmetric(horizontal: 2.w),
      padding:
      EdgeInsets.symmetric(horizontal: 1.w, vertical: 1.h),
      decoration: BoxDecoration(
        color: MainColor.primary,
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.center,
      child: Text(
        "View Certificate",
        style: TextStyle(
          fontFamily: Font.Montserrat,
          fontSize: 15.sp,
          color: Colors.white,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
