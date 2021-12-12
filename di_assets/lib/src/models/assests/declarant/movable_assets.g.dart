// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movable_assets.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovableAssets _$MovableAssetsFromJson(Map<String, dynamic> json) =>
    MovableAssets(
      declarantOwned: (json['declarantOwned'] as List<dynamic>?)
          ?.map((e) => DeclarantOwned.fromJson(e as Map<String, dynamic>))
          .toList(),
      jointOwned: (json['jointOwned'] as List<dynamic>?)
          ?.map((e) => JointOwned.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MovableAssetsToJson(MovableAssets instance) =>
    <String, dynamic>{
      'declarantOwned': instance.declarantOwned,
      'jointOwned': instance.jointOwned,
    };

JointOwned _$JointOwnedFromJson(Map<String, dynamic> json) => JointOwned(
      typeOfAsset: json['typeOfAsset'] == null
          ? null
          : TypeOfAsset.fromJson(json['typeOfAsset'] as Map<String, dynamic>),
      registrationNo: json['registrationNo'] as String?,
      pricePaid: json['pricePaid'] as String?,
      latestValue: json['latestValue'] as String?,
      acquiredFrom: json['acquiredFrom'] as String?,
      sourceOfFinance: $enumDecodeNullable(
          _$SourceOfFinanceEnumMap, json['sourceOfFinance']),
      currentStatus: json['currentStatus'] as String?,
      dateAcquired: json['dateAcquired'] == null
          ? null
          : DateTime.parse(json['dateAcquired'] as String),
    );

Map<String, dynamic> _$JointOwnedToJson(JointOwned instance) =>
    <String, dynamic>{
      'typeOfAsset': instance.typeOfAsset,
      'registrationNo': instance.registrationNo,
      'pricePaid': instance.pricePaid,
      'latestValue': instance.latestValue,
      'acquiredFrom': instance.acquiredFrom,
      'sourceOfFinance': _$SourceOfFinanceEnumMap[instance.sourceOfFinance],
      'currentStatus': instance.currentStatus,
      'dateAcquired': instance.dateAcquired?.toIso8601String(),
    };

const _$SourceOfFinanceEnumMap = {
  SourceOfFinance.bought: 'bought',
  SourceOfFinance.donated: 'donated',
  SourceOfFinance.won: 'won',
};

TypeOfAsset _$TypeOfAssetFromJson(Map<String, dynamic> json) => TypeOfAsset(
      type: json['type'] as String?,
      make: json['make'] as String?,
    );

Map<String, dynamic> _$TypeOfAssetToJson(TypeOfAsset instance) =>
    <String, dynamic>{
      'type': instance.type,
      'make': instance.make,
    };

DeclarantOwned _$DeclarantOwnedFromJson(Map<String, dynamic> json) =>
    DeclarantOwned(
      typeOfAsset: json['typeOfAsset'] == null
          ? null
          : TypeOfAsset.fromJson(json['typeOfAsset'] as Map<String, dynamic>),
      registrationNo: json['registrationNo'] as String?,
      pricePaid: json['pricePaid'] as String?,
      latestValue: json['latestValue'] as String?,
      acquiredFrom: json['acquiredFrom'] as String?,
      sourceOfFinance: $enumDecodeNullable(
          _$SourceOfFinanceEnumMap, json['sourceOfFinance']),
      currentStatus: json['currentStatus'] as String?,
      dateAcquired: json['dateAcquired'] == null
          ? null
          : DateTime.parse(json['dateAcquired'] as String),
    );

Map<String, dynamic> _$DeclarantOwnedToJson(DeclarantOwned instance) =>
    <String, dynamic>{
      'typeOfAsset': instance.typeOfAsset,
      'registrationNo': instance.registrationNo,
      'pricePaid': instance.pricePaid,
      'latestValue': instance.latestValue,
      'acquiredFrom': instance.acquiredFrom,
      'sourceOfFinance': _$SourceOfFinanceEnumMap[instance.sourceOfFinance],
      'currentStatus': instance.currentStatus,
      'dateAcquired': instance.dateAcquired?.toIso8601String(),
    };
