// movable assets class
import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

import 'package:di_assets/src/app/global/globals.dart';

part 'movable_assets.g.dart';

@JsonSerializable()
class MovableAssets {
  final List<DeclarantOwned>? declarantOwned;
  final List<JointOwned>? jointOwned;
  MovableAssets({
    this.declarantOwned,
    this.jointOwned,
  });

  Map<String, dynamic> toJson() => _$MovableAssetsToJson(this);

  factory MovableAssets.fromJson(Map<String, dynamic> json) =>
      _$MovableAssetsFromJson(json);
}

// declarant jointly owned assests class
@JsonSerializable()
class JointOwned {
  final TypeOfAsset? typeOfAsset;
  final String? registrationNo;
  final String? pricePaid;
  final String? latestValue;
  final String? acquiredFrom;
  final SourceOfFinance? sourceOfFinance;
  final String? currentStatus;
  final DateTime? dateAcquired;
  JointOwned({
    this.typeOfAsset,
    this.registrationNo,
    this.pricePaid,
    this.latestValue,
    this.acquiredFrom,
    this.sourceOfFinance,
    this.currentStatus,
    this.dateAcquired,
  });

  Map<String, dynamic> toMJson() => _$JointOwnedToJson(this);

  factory JointOwned.fromJson(Map<String, dynamic> json) =>
      _$JointOwnedFromJson(json);
}

// type of assets class
@JsonSerializable()
class TypeOfAsset {
  final String? type;
  final String? make;
  TypeOfAsset({
    this.type,
    this.make,
  });

  Map<String, dynamic> toJson() => _$TypeOfAssetToJson(this);

  factory TypeOfAsset.fromJson(Map<String, dynamic> json) =>
      _$TypeOfAssetFromJson(json);
}

// declarant owned assests class
@JsonSerializable()
class DeclarantOwned {
  final TypeOfAsset? typeOfAsset;
  final String? registrationNo;
  final String? pricePaid;
  final String? latestValue;
  final String? acquiredFrom;
  final SourceOfFinance? sourceOfFinance;
  final String? currentStatus;
  final DateTime? dateAcquired;
  DeclarantOwned({
    this.typeOfAsset,
    this.registrationNo,
    this.pricePaid,
    this.latestValue,
    this.acquiredFrom,
    this.sourceOfFinance,
    this.currentStatus,
    this.dateAcquired,
  });

  Map<String, dynamic> toJson() => _$DeclarantOwnedToJson(this);

  factory DeclarantOwned.fromJson(Map<String, dynamic> json) =>
      _$DeclarantOwnedFromJson(json);
}
