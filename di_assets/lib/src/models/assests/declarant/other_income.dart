// other income assets class
import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

import 'package:di_assets/src/app/global/globals.dart';

part 'other_income.g.dart';

@JsonSerializable()
class OtherIncome {
  final List<TrustOwned>? trustOwned;
  final List<NegotiableOwned>? negotiableOwned;
  OtherIncome({
    this.trustOwned,
    this.negotiableOwned,
  });

  Map<String, dynamic> toJson() => _$OtherIncomeToJson(this);

  factory OtherIncome.fromJson(Map<String, dynamic> json) =>
      _$OtherIncomeFromJson(json);
}

// shares information class
@JsonSerializable()
class Shares {
  final String? sharesNo;
  final String? typeOfShares;
  Shares({
    this.sharesNo,
    this.typeOfShares,
  });

  Map<String, dynamic> toJson() => _$SharesToJson(this);

  factory Shares.fromJson(Map<String, dynamic> json) => _$SharesFromJson(json);
}

@JsonSerializable()
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

  Map<String, dynamic> toJson() => _$TrustOwnedToJson(this);

  factory TrustOwned.fromJson(Map<String, dynamic> json) =>
      _$TrustOwnedFromJson(json);
}

// other income assets that may be negotiably owned by declarant e.g securities
// class

@JsonSerializable()
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

  Map<String, dynamic> toJson() => _$NegotiableOwnedToJson(this);

  factory NegotiableOwned.fromJson(Map<String, dynamic> json) =>
      _$NegotiableOwnedFromJson(json);
}
