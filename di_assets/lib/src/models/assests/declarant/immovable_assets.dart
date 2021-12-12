// immovable assets class
import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

import 'package:di_assets/src/app/global/globals.dart';

part 'immovable_assets.g.dart';

@JsonSerializable()
class ImmovableAssets {
  final String description;
  final OwnerShipType? ownershipType;
  final String? plotSize;
  final Location? location;
  final AcquisitionType? acquisitionType;
  final bool? jointOwnership;
  final List<CoOwners>? coOwners;
  final String? docId;

  ImmovableAssets({
    required this.description,
    this.ownershipType,
    this.plotSize,
    this.location,
    this.acquisitionType,
    this.jointOwnership,
    this.coOwners,
    this.docId,
  });

  Map<String, dynamic> toJson() => _$ImmovableAssetsToJson(this);

  factory ImmovableAssets.fromJson(Map<String, dynamic> json) =>
      _$ImmovableAssetsFromJson(json);
}

// location class
@JsonSerializable()
class Location {
  final String? city;
  final String? state;
  final String? country;
  Location({
    this.city,
    this.state,
    this.country,
  });

  Map<String, dynamic> toJson() => _$LocationToJson(this);

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

// co-owners class
@JsonSerializable()
class CoOwners {
  final String? firstName;
  final String? lastName;
  final NationalIdentity? nationalIdentity;
  final String? relation;
  final String? latestValue;
  final String? identity;

  CoOwners({
    this.firstName,
    this.lastName,
    this.nationalIdentity,
    this.relation,
    this.latestValue,
    this.identity,
  });

  Map<String, dynamic> toJson() => _$CoOwnersToJson(this);

  factory CoOwners.fromJson(Map<String, dynamic> json) =>
      _$CoOwnersFromJson(json);
}
