// declarant other assets class
import 'package:di_assets/src/app/global/globals.dart';

class OtherAssets {
  final String? description;
  final DateTime? dateOfTransfer;
  final String? assetId;
  final String? transferredTo;
  final OtherIncomeMannerOfTransfer? mannerOfTransfer;
  final String? pricePaid;
  OtherAssets({
    this.description,
    this.dateOfTransfer,
    this.assetId,
    this.transferredTo,
    this.mannerOfTransfer,
    this.pricePaid,
  });
}
