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

class _MainScreenState extends State<MainScreen> {
  int currentTabIndex = 0;
  late PageController _pageController;
  late List<Widget> _pages;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: currentTabIndex);
    _pages = [
      const HomeScreen(),
      const MapScreen(),
      const BlogScreen(),
      const ProfileScreen()
    ];
  }
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }
  void _onItemTapped(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: _pages,
      ),
      bottomNavigationBar: Container(
          decoration: const BoxDecoration(color: Colors.white),
          height: 80,
          child: BottomNavigationBar(
            currentIndex: currentTabIndex,
            onTap: _onItemTapped,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  currentTabIndex == 0 ? AppIcons.homeSelect : AppIcons.home,
                  width: 20,
                  height: 20,
                ),
                  label: ""
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  currentTabIndex == 1
                      ? AppIcons.placeholderSelect
                      : AppIcons.placeholder,
                  width: 20,
                  height: 20,
                ),
                  label: ""
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  currentTabIndex == 2 ? AppIcons.blogSelect : AppIcons.blog,
                  width: 20,
                  height: 20,
                ),
                  label: ""
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  currentTabIndex == 3 ? AppIcons.userSelect : AppIcons.user,
                  width: 20,
                  height: 20,
                ),
                label: ""
              )
            ],
          )
      ),
    );
  }
}
