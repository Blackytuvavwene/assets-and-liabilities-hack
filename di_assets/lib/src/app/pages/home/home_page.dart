import 'package:di_assets/src/app/global/globals.dart';
import 'package:flutter/material.dart';

import 'package:di_assets/src/app/pages/widgets/poppins_text.dart';
import 'package:di_assets/src/app/pages/widgets/responsive_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
    this.uri,
  }) : super(key: key);
  final String? uri;

  @override
  Widget build(BuildContext context) {
    return ResLayout(
      web: const HomePageWeb(),
      tablet: Container(
        color: Colors.red,
        child: const Center(
          child: Potxt(
            text: 'TabHome',
          ),
        ),
      ),
      phone: Container(
        color: Colors.blue,
        child: const Center(
          child: Potxt(
            text: 'MobileHome',
          ),
        ),
      ),
    );
  }
}

//home page for web
class HomePageWeb extends HookConsumerWidget {
  const HomePageWeb({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 100.h,
          width: 100.w,
          color: AppColor.appLightPink,
          child: ListView(
            children: [
              const Potxt(
                text: 'HomePageWeb',
                textAlign: TextAlign.center,
              ),
              Container(
                height: 100.h,
                width: 100.w,
                color: Colors.red,
                margin: EdgeInsets.symmetric(
                  horizontal: 10.w,
                  vertical: 10.h,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
