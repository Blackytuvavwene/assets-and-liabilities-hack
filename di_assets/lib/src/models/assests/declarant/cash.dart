// cash assests class

import 'package:di_assets/src/app/global/globals.dart';

class Cash {
  final String? ammountTransferred;
  final DateTime? dateOfTransfer;
  final String? transferredTo;
  final String? currency;
  final String? sourceOfFunds;
  final MannerOfTransfer? mannerOfTransfer;
  Cash({
    this.ammountTransferred,
    this.dateOfTransfer,
    this.transferredTo,
    this.currency,
    this.sourceOfFunds,
    this.mannerOfTransfer,
  });
}
