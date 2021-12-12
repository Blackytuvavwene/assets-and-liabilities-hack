// declarant other assets class
import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

import 'package:di_assets/src/app/global/globals.dart';

part 'other_assets.g.dart';

@JsonSerializable()
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

  Map<String, dynamic> toJson() => _$OtherAssetsToJson(this);

  factory OtherAssets.fromJson(Map<String, dynamic> json) =>
      _$OtherAssetsFromJson(json);
}
