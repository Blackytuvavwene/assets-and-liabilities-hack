import 'package:di_assets/src/app/global/globals.dart';

//present liabilities class for declarant
class PresentLiabilities {
  final Creditor? creditor;
  final LiabilityType? liabilityType;
  final LiabilityDetails? liabilityDetails;
  PresentLiabilities({
    this.creditor,
    this.liabilityType,
    this.liabilityDetails,
  });
}

// creditor details class
class Creditor {
  final String? creditorName;
  final String? creditorAddress;
  Creditor({
    this.creditorName,
    this.creditorAddress,
  });
}

// liability details class
class LiabilityDetails {
  final String? amount;
  final DateTime? date;
  LiabilityDetails({
    this.amount,
    this.date,
  });
}
