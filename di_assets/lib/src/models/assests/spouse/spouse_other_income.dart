import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
part 'spouse_other_income.g.dart';

@JsonSerializable()
class SpouseOtherIncome {
  final List<SpouseTrustOwned>? trustOwned;
  final List<SpouseNegotiableOwned>? negotiableOwned;
  SpouseOtherIncome({
    this.trustOwned,
    this.negotiableOwned,
  });

  Map<String, dynamic> toJson() => _$SpouseOtherIncomeToJson(this);

  factory SpouseOtherIncome.fromJson(Map<String, dynamic> json) =>
      _$SpouseOtherIncomeFromJson(json);
}

@JsonSerializable()
class SpouseTrustOwned {
  final SpouseShares? shares;
  final String? pricePaid;
  final DateTime? dateAcquired;
  final String? currentStatus;
  final String? sourceOfFunds;
  final String? currentValue;
  SpouseTrustOwned({
    this.shares,
    this.pricePaid,
    this.dateAcquired,
    this.currentStatus,
    this.sourceOfFunds,
    this.currentValue,
  });

  Map<String, dynamic> toJson() => _$SpouseTrustOwnedToJson(this);

  factory SpouseTrustOwned.fromJson(Map<String, dynamic> json) =>
      _$SpouseTrustOwnedFromJson(json);
}

@JsonSerializable()
class SpouseShares {
  final SpouseSharesDetails? details;
  final String? shareCertificateNo;
  final String? companyName;
  SpouseShares({
    this.details,
    this.shareCertificateNo,
    this.companyName,
  });

  Map<String, dynamic> toJson() => _$SpouseSharesToJson(this);

  factory SpouseShares.fromJson(Map<String, dynamic> json) =>
      _$SpouseSharesFromJson(json);
}

@JsonSerializable()
class SpouseNegotiableOwned {
  final SpouseSharesDetails? sharesDetails;
  final String? pricePaid;
  final DateTime? dateAcquired;
  final String? currentStatus;
  final String? sourceOfFunds;
  final String? currentValue;
  SpouseNegotiableOwned({
    this.sharesDetails,
    this.pricePaid,
    this.dateAcquired,
    this.currentStatus,
    this.sourceOfFunds,
    this.currentValue,
  });

  Map<String, dynamic> toJson() => _$SpouseNegotiableOwnedToJson(this);

  factory SpouseNegotiableOwned.fromJson(Map<String, dynamic> json) =>
      _$SpouseNegotiableOwnedFromJson(json);
}

@JsonSerializable()
class SpouseSharesDetails {
  final String? number;
  final String? type;
  SpouseSharesDetails({
    this.number,
    this.type,
  });

  Map<String, dynamic> toJson() => _$SpouseSharesDetailsToJson(this);

  factory SpouseSharesDetails.fromJson(Map<String, dynamic> json) =>
      _$SpouseSharesDetailsFromJson(json);
}
