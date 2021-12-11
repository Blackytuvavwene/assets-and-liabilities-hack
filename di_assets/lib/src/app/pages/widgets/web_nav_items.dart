import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

import 'package:di_assets/src/app/global/globals.dart';
import 'package:di_assets/src/app/pages/widgets/poppins_text.dart';

class WebNavItem extends StatelessWidget {
  const WebNavItem({
    Key? key,
    this.icon,
    this.title,
    this.onTap,
  }) : super(key: key);
  final Icon? icon;
  final String? title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
          color: AppColor.appBrown,
          border: Border(
            bottom: BorderSide(
              color: AppColor.appLightBlue,
              width: 1,
            ),
          ),
        ),
        child: Column(
          children: <Widget>[
            icon ?? LineIcon.home(),
            Potxt(
              text: title,
            ),
          ],
        ),
      ),
    );
  }
}
