import 'package:di_assets/src/app/pages/dashboard/dashboard_page.dart';
import 'package:di_assets/src/app/pages/home/home_page.dart';
import 'package:di_assets/src/app/pages/profile/profile_page.dart';
import 'package:di_assets/src/app/pages/widgets/poppins_text.dart';
import 'package:di_assets/src/app/pages/widgets/responsive_widget.dart';
import 'package:di_assets/src/app/pages/widgets/web_nav_items.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sizer/sizer.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResLayout(
      web: const MainPageWeb(),
      tablet: Container(
        color: Colors.red,
        child: const Center(
          child: Potxt(
            text: 'TabMain',
          ),
        ),
      ),
      phone: Container(
        color: Colors.blue,
        child: const Center(
          child: Potxt(
            text: 'MobileMain',
          ),
        ),
      ),
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

class MainPageTab extends HookConsumerWidget {
  const MainPageTab({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var _pages = [
      const HomePage(),
      const DashBoardPage(),
      const ProfilePage(),
    ];
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: _pages,
        ),
      ),
    );
  }
}
