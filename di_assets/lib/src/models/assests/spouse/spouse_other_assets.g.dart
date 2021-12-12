// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spouse_other_assets.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpouseOtherAssets _$SpouseOtherAssetsFromJson(Map<String, dynamic> json) =>
    SpouseOtherAssets(
      description: json['description'] as String?,
      value: json['value'] as String?,
      dateAcquired: json['dateAcquired'] == null
          ? null
          : DateTime.parse(json['dateAcquired'] as String),
      currentStatus: json['currentStatus'] as String?,
      sourceOfFunds: json['sourceOfFunds'] as String?,
      registeredOwner: json['registeredOwner'] as String?,
    );

Map<String, dynamic> _$SpouseOtherAssetsToJson(SpouseOtherAssets instance) =>
    <String, dynamic>{
      'description': instance.description,
      'value': instance.value,
      'dateAcquired': instance.dateAcquired?.toIso8601String(),
      'currentStatus': instance.currentStatus,
      'sourceOfFunds': instance.sourceOfFunds,
      'registeredOwner': instance.registeredOwner,
    };
