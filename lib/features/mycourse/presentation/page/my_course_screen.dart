import 'package:e_learing_app/core/enums/course_status.dart';
import 'package:e_learing_app/core/themes/colors.dart';
import 'package:e_learing_app/core/themes/font.dart';
import 'package:e_learing_app/features/mycourse/presentation/bloc/course_cubit.dart';
import 'package:e_learing_app/features/mycourse/presentation/page/screens/completed_screen.dart';
import 'package:e_learing_app/features/mycourse/presentation/page/screens/ongoing_screen.dart';
import 'package:e_learing_app/features/mycourse/presentation/widgets/tab_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class MyCoursesScreen extends StatefulWidget {
  const MyCoursesScreen({super.key});

  @override
  State<MyCoursesScreen> createState() => _MyCoursesScreenState();
}

class _MyCoursesScreenState extends State<MyCoursesScreen> {
  CourseStatus courseStatus = CourseStatus.Ongoing;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColor.white,
      appBar: AppBar(
        backgroundColor: MainColor.white,
        title: Text(
          "My Courses",
          style: TextStyle(
            fontFamily: Font.Montserrat,
            color: MainColor.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: BlocProvider<CourseCubit>(
        create: (context) => CourseCubit(),
        child: BlocBuilder<CourseCubit, CourseState>(
          builder: (context, state) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  TabWidget(
                    status: context.read<CourseCubit>().getCourseStatus()!,
                    onToggle: () {
                      context.read<CourseCubit>().toggle();
                    },
                  ),
                  _buildContent(
                    context.read<CourseCubit>().getCourseStatus()!,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  _buildContent(CourseStatus state) {
    return switch (state) {
      CourseStatus.Ongoing => const OngoingScreen(),
      CourseStatus.Completed => const CompletedScreen()
    };
  }

}
