import 'package:e_learing_app/core/themes/colors.dart';
import 'package:e_learing_app/core/themes/font.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tabler_icons/tabler_icons.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Profile",
          style: TextStyle(
            fontFamily: Font.Montserrat,
            fontSize: 20.sp,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              _buildImageProfile(),
              _buildDescriptionProfile(),
              const SizedBox(height: 15),
              _buildItemMenu(),
            ],
          ),
        ),
      ),
    );
  }

  _buildImageProfile() {
    String image = "assets/img/alexandru-zdrobau-BGz8vO3pK8k-unsplash.jpg";
    return Container(
      width: 40.w,
      height: 20.h,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.brown,
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  _buildDescriptionProfile() {
    return Column(
      children: [
        Text(
          "Tanzima Anisha",
          style: TextStyle(
            fontSize: 22.sp,
            fontWeight: FontWeight.w800,
            color: MainColor.black,
            fontFamily: Font.Montserrat,
          ),
        ),
        Text(
          "Student",
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
            color: MainColor.black,
            fontFamily: Font.Montserrat,
          ),
        )
      ],
    );
  }

  _buildItemMenu() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: menus.length,
      itemBuilder: (_, i) {
        ItemMenu item = menus[i];
        return ListTile(
          leading: CircleAvatar(
            maxRadius: 25,
            backgroundColor: item.color.withOpacity(0.4),
            child: Icon(
              item.icon,
              color: Colors.brown,
            ),
          ),
          title: Text(
            item.text,
            style: TextStyle(
              fontFamily: Font.Montserrat,
              fontWeight: FontWeight.w700,
              color: Colors.brown.shade800,
              fontSize: 17.sp,
            ),
          ),
        );
      },
    );
  }
}

List<ItemMenu> menus = [
  ItemMenu(
    text: "Settings",
    icon: TablerIcons.settings,
    color: Colors.green,
  ),
  ItemMenu(
    text: "Payment Method",
    icon: TablerIcons.credit_card,
    color: Colors.pink,
  ),
  ItemMenu(
    text: "Rewards",
    icon: TablerIcons.award,
    color: Colors.deepPurpleAccent,
  ),
  ItemMenu(
    text: "Logout",
    icon: TablerIcons.logout,
    color: Colors.yellow,
  ),
];

class ItemMenu {
  final String text;
  final IconData icon;
  final Color color;

  ItemMenu({required this.text, required this.icon, required this.color});
}
