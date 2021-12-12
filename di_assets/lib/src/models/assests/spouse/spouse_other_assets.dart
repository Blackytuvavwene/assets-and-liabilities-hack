import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'spouse_other_assets.g.dart';

@JsonSerializable()
class SpouseOtherAssets {
  final String? description;
  final String? value;
  final DateTime? dateAcquired;
  final String? currentStatus;
  final String? sourceOfFunds;
  final String? registeredOwner;
  SpouseOtherAssets({
    this.description,
    this.value,
    this.dateAcquired,
    this.currentStatus,
    this.sourceOfFunds,
    this.registeredOwner,
  });

  Map<String, dynamic> toJson() => _$SpouseOtherAssetsToJson(this);

  factory SpouseOtherAssets.fromJson(Map<String, dynamic> json) =>
      _$SpouseOtherAssetsFromJson(json);
}
