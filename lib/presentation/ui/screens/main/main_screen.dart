import 'package:flutter/material.dart';
import 'package:student_com_app/presentation/ui/resources/app_icons.dart';
import 'package:student_com_app/presentation/ui/screens/blog/blog_screen.dart';
import 'package:student_com_app/presentation/ui/screens/home/home_screen.dart';
import 'package:student_com_app/presentation/ui/screens/map/map_screen.dart';
import 'package:student_com_app/presentation/ui/screens/profile/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController =
        TabController(length: 4, vsync: this, initialIndex: currentTabIndex);
  }

  int currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: tabController,
        children: const [
          HomeScreen(),
          MapScreen(),
          BlogScreen(),
          ProfileScreen()
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(color: Colors.white),
        height: 80,
        child: TabBar(
          indicatorColor: Colors.transparent,
          controller: tabController,
          onTap: (index) {
            setState(() {
              currentTabIndex = index;
            });
          },
          tabs: [
            Image.asset(
              currentTabIndex == 0 ? AppIcons.homeSelect : AppIcons.home,
              width: 20,
              height: 20,
            ),
            Image.asset(
              currentTabIndex == 1
                  ? AppIcons.placeholderSelect
                  : AppIcons.placeholder,
              width: 20,
              height: 20,
            ),
            Image.asset(
              currentTabIndex == 2 ? AppIcons.blogSelect : AppIcons.blog,
              width: 20,
              height: 20,
            ),
            Image.asset(
              currentTabIndex == 3 ? AppIcons.userSelect : AppIcons.user,
              width: 20,
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
