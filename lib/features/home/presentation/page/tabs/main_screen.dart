import 'package:e_learing_app/core/assets/asset_img.dart';
import 'package:e_learing_app/core/themes/colors.dart';
import 'package:e_learing_app/core/themes/font.dart';
import 'package:e_learing_app/core/utils/socket_services.dart';
import 'package:e_learing_app/features/home/domain/models/Category_model.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tabler_icons/tabler_icons.dart';

import '../../widgets/main_screen_widgets.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColor.white,
      appBar: AppBar(
        title:Text(
          "Soft Course",
          style: TextStyle(
            fontFamily: Font.Fustat,
            // fontSize: 13.sp,
            fontWeight: FontWeight.w500,
            color: MainColor.white,
          ),
        ),
        backgroundColor: MainColor.primary,
        leading: IconButton(
          icon: Icon(
            TablerIcons.apps,
            color: MainColor.white,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            onPressed: () {
              SocketService socket = SocketService();
              socket.connectAndListen();
            },
            icon: Icon(
              TablerIcons.search,
              color: MainColor.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildTitle(),
            buildAds(),
            SizedBox(height: 2.h),
            buildGridView(),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }

  buildGridView() {
    return SafeArea(
      top: true,
      minimum: const EdgeInsets.symmetric(horizontal: 15),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          mainAxisExtent: 25.h,
        ),
        itemCount: categories.length,
        physics:
            const ClampingScrollPhysics(parent: FixedExtentScrollPhysics()),
        itemBuilder: (_, i) {
          CategoryModel category = categories[i];
          return Container(
            width: 30.w,
            height: 18.h,
            decoration: BoxDecoration(
              color: MainColor.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  offset: const Offset(1, 1),
                  blurRadius: 4,
                  spreadRadius: 1,
                ),
              ],
            ),
            padding: EdgeInsets.symmetric( horizontal: 4.w , vertical: 2.h ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 28.w,
                  height: 14.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(category.image)
                    )
                  ),
                ),
                Text(
                  category.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: MainColor.black,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: Font.Montserrat,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  List<CategoryModel> categories = [
    CategoryModel(title: "UI Design", image: "assets/img/web-design.png"),
    CategoryModel(title: "Digital Marketing", image: "assets/img/video.png"),
    CategoryModel(title: "Accounting", image: "assets/img/accounts.png"),
    CategoryModel(title: "Programming", image: "assets/img/program.png"),
  ];
}
