import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

import 'package:di_assets/src/app/global/globals.dart';

part 'liabilities.g.dart';

//present liabilities class for declarant
@JsonSerializable()
class PresentLiabilities {
  final Creditor? creditor;
  final LiabilityType? liabilityType;
  final LiabilityDetails? liabilityDetails;
  PresentLiabilities({
    this.creditor,
    this.liabilityType,
    this.liabilityDetails,
  });

  Map<String, dynamic> toJson() => _$PresentLiabilitiesToJson(this);

  factory PresentLiabilities.fromJson(Map<String, dynamic> json) =>
      _$PresentLiabilitiesFromJson(json);
}

// creditor details class
@JsonSerializable()
class Creditor {
  final String? creditorName;
  final String? creditorAddress;
  Creditor({
    this.creditorName,
    this.creditorAddress,
  });

  Map<String, dynamic> toJson() => _$CreditorToJson(this);

  factory Creditor.fromJson(Map<String, dynamic> json) =>
      _$CreditorFromJson(json);
}

// liability details class
@JsonSerializable()
class LiabilityDetails {
  final String? amount;
  final DateTime? date;
  LiabilityDetails({
    this.amount,
    this.date,
  });

  Map<String, dynamic> toJson() => _$LiabilityDetailsToJson(this);

  factory LiabilityDetails.fromJson(Map<String, dynamic> json) =>
      _$LiabilityDetailsFromJson(json);
}
