// other income assets class
import 'package:di_assets/src/app/global/globals.dart';

class OtherIncome {
  final List<TrustOwned>? trustOwned;
  final List<NegotiableOwned>? negotiableOwned;
  OtherIncome({
    this.trustOwned,
    this.negotiableOwned,
  });
}

// shares information class
class Shares {
  final String? sharesNo;
  final String? typeOfShares;
  Shares({
    this.sharesNo,
    this.typeOfShares,
  });
}

class TrustOwned {
  final Shares? shares;
  final DateTime? dateOfTransfer;
  final String? transferredTo;
  final OtherIncomeMannerOfTransfer? mannerOfTransfer;
  final String? pricePaid;
  TrustOwned({
    this.shares,
    this.dateOfTransfer,
    this.transferredTo,
    this.mannerOfTransfer,
    this.pricePaid,
  });
}

// other income assets that may be negotiably owned by declarant e.g securities
// class

class NegotiableOwned {
  final Shares? shares;
  final DateTime? dateOfTransfer;
  final String? transferredTo;
  final OtherIncomeMannerOfTransfer? mannerOfTransfer;
  final String? pricePaid;
  NegotiableOwned({
    this.shares,
    this.dateOfTransfer,
    this.transferredTo,
    this.mannerOfTransfer,
    this.pricePaid,
  });
}
