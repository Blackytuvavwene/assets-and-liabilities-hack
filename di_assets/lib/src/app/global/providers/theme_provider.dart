import 'package:di_assets/src/app/global/globals.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final themeProvider = ChangeNotifierProvider<AppTheme>(
  (ref) {
    return AppTheme(
      ref: ref,
    );
  },
);
