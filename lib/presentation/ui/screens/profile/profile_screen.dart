import 'package:flutter/material.dart';
import 'package:student_com_app/presentation/ui/resources/app_color.dart';
import 'package:student_com_app/presentation/ui/resources/app_icons.dart';
import 'package:student_com_app/presentation/ui/resources/app_style.dart';
import 'package:student_com_app/presentation/ui/widgets/w_profile_items.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 80,
                        width: 80,
                        child: CircleAvatar(
                          radius: 80,
                          backgroundImage: AssetImage(AppIcons.student),
                        ),
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      Container(
                        color: Colors.amberAccent,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 16.0),
                          child: Text(
                            "Login/Sign up",
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.6),
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              WProfileItems(icon: Icons.book, title: "My Bookings", onTab: (){},),
              _getSizeBox(),
              WProfileItems(icon: Icons.details, title: "My Details", onTab: (){},),
              WProfileItems(icon: Icons.gpp_good_outlined, title: "Wishlist", onTab: (){},),
              WProfileItems(icon: Icons.access_time, title: "Recently Viewed", onTab: (){},),
              WProfileItems(icon: Icons.copy, title: "Compare List", onTab: (){},),
              WProfileItems(icon: Icons.money, title: "My Coupons", onTab: (){},),
              _getSizeBox(),
              WProfileItems(icon: Icons.help_center_outlined, title: "Help Center", onTab: (){},),
              WProfileItems(icon: Icons.account_circle_outlined, title: "About", onTab: (){},),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }

  _getAppBar() => AppBar(
        backgroundColor: AppColors.appBarColor,
        actions: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.person_outline_sharp,
                        color: Colors.white.withOpacity(
                          0.8,
                        ),
                      ),
                      Text(
                        "I'm a partner",
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.8), fontSize: 16),
                      )
                    ],
                  ),
                ),
                Text(
                  "Profile",
                  style: AppStyles.getTitleCategory()
                      .copyWith(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(width: 4),
                const Padding(
                  padding: EdgeInsets.only(right: 12.0),
                  child: Icon(
                    Icons.headset_mic,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      );
}
_getSizeBox()=>const SizedBox(height: 28);
