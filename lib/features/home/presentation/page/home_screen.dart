import 'package:e_learing_app/core/enums/tabs.dart';
import 'package:e_learing_app/features/home/presentation/page/tabs/main_screen.dart';
import 'package:e_learing_app/features/home/presentation/widgets/icon_button_widget.dart';
import 'package:e_learing_app/features/profile/presentation/pages/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tabler_icons/tabler_icons.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../favorite/presentation/pages/favorite_screen.dart';
import '../../../mycourse/presentation/page/my_course_screen.dart';
import '../bloc/menu_cubit.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<MenuCubit>(
      create: (context) => MenuCubit(),
      child: BlocBuilder<MenuCubit, MenuState>(
        builder: (context, state) {
          return Scaffold(
            body: Stack(
              children: [
                getContent(state.tab),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: _buildNavigationBottom(context, state),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget getContent(TabMenu tab) {
    return switch (tab) {
      // TODO: Handle this case.
      TabMenu.HOME => MainScreen(),
      // TODO: Handle this case.
      TabMenu.PROFILE => const ProfileScreen(),
      // TODO: Handle this case.
      TabMenu.LAPTOP => const MyCoursesScreen(),
      // TODO: Handle this case.
      TabMenu.FAVORITE => const FavoriteScreen(),
    };
  }

  _buildNavigationBottom(context, state) {
    return Container(
      width: 95.w,
      height: 10.h,
      margin: EdgeInsets.symmetric(horizontal: 2.5.w, vertical: 2.h),
      padding: EdgeInsets.symmetric(vertical: 1.w, horizontal: 3.w),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 10,
            spreadRadius: 5,
            offset: const Offset(-1, 2),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButtonWidget(
            icon: TablerIcons.smart_home,
            onTap: () {

              BlocProvider.of<MenuCubit>(context).home();
            },
            tab: TabMenu.HOME,
            selectMenu: state.tab,
          ),
          IconButtonWidget(
            icon: TablerIcons.device_laptop,
            onTap: () {
              BlocProvider.of<MenuCubit>(context).laptop();
            },
            tab: TabMenu.LAPTOP,
            selectMenu: state.tab,
          ),
          IconButtonWidget(
            icon: TablerIcons.heart,
            onTap: () {
              BlocProvider.of<MenuCubit>(context).favorite();
            },
            tab: TabMenu.FAVORITE,
            selectMenu: state.tab,
          ),
          IconButtonWidget(
            icon: TablerIcons.user,
            onTap: () {
              BlocProvider.of<MenuCubit>(context).user();
            },
            tab: TabMenu.PROFILE,
            selectMenu: state.tab,
          ),
        ],
      ),
    );
  }
}
