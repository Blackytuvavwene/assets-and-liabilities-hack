import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:di_assets/src/app/pages/dashboard/dashboard_page.dart';
import 'package:di_assets/src/app/pages/home/home_page.dart';
import 'package:di_assets/src/app/pages/profile/profile_page.dart';
import 'package:di_assets/src/app/pages/widgets/poppins_text.dart';
import 'package:di_assets/src/app/pages/widgets/responsive_widget.dart';
import 'package:di_assets/src/app/pages/widgets/web_nav_items.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:line_icons/line_icon.dart';
import 'package:sizer/sizer.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResLayout(
      web: MainPageWeb(),
      tablet: MainPageTab(),
      phone: MainPageTab(),
    );
  }
}

class MainPageWeb extends HookConsumerWidget {
  const MainPageWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var _index = 0;
    var _pageController = PageController(initialPage: _index);

    List<Widget> _pages() => [
          const HomePage(),
          const DashBoardPage(),
          const ProfilePage(),
        ];
    void _onTap(int index) {
      _index = index;
      _pageController.animateToPage(
        _index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    }

    return Scaffold(
      body: Row(children: [
        SizedBox(
          width: 7.w,
          child: ListView(
            padding: EdgeInsets.all(
              1.w,
            ),
            children: [
              WebNavItem(
                title: 'Home',
                onTap: () {
                  _onTap(0);
                },
              ),
              WebNavItem(
                title: 'Dashboard',
                onTap: () {
                  _onTap(1);
                },
              ),
              WebNavItem(
                title: 'Profile',
                onTap: () {
                  _onTap(2);
                },
              ),
            ],
          ),
        ),
        Expanded(
          child: PageView(
            controller: _pageController,
            children: _pages(),
            onPageChanged: (index) {
              _onTap(index);
            },
          ),
        ),
      ]),
    );
  }
}

class MainPageTab extends StatefulWidget {
  const MainPageTab({Key? key}) : super(key: key);

  @override
  _MainPageTabState createState() => _MainPageTabState();
}

class _MainPageTabState extends State<MainPageTab> {
  int _selectedIndex = 0;
  PageController? _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController?.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController?.animateToPage(
        index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
      _pageController?.jumpToPage(index);
    });
  }

  List<Widget> _pages() => [
        const HomePage(),
        const DashBoardPage(),
        const ProfilePage(),
      ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() => _selectedIndex = index);
        },
        children: _pages(),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedIndex,
        showElevation: false,
        items: [
          BottomNavyBarItem(
            icon: LineIcon.home(),
            title: const Potxt(
              text: 'Home',
            ),
          ),
          BottomNavyBarItem(
            icon: LineIcon.city(),
            title: const Potxt(
              text: 'Dashboard',
            ),
          ),
          BottomNavyBarItem(
            icon: LineIcon.user(),
            title: const Potxt(
              text: 'Profile',
            ),
          ),
        ],
        onItemSelected: _onItemTapped,
      ),
    );
  }
}
