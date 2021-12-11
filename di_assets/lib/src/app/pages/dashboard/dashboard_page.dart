import 'package:flutter/material.dart';

import 'package:di_assets/src/app/pages/widgets/poppins_text.dart';
import 'package:di_assets/src/app/pages/widgets/responsive_widget.dart';

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({
    Key? key,
    this.uri,
  }) : super(key: key);
  final String? uri;

  @override
  Widget build(BuildContext context) {
    return ResLayout(
      web: Container(
        color: Colors.white,
        child: const Center(
          child: Potxt(
            text: 'WebMain',
          ),
        ),
      ),
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
