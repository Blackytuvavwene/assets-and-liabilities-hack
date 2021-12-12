// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'other_assets.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtherAssets _$OtherAssetsFromJson(Map<String, dynamic> json) => OtherAssets(
      description: json['description'] as String?,
      dateOfTransfer: json['dateOfTransfer'] == null
          ? null
          : DateTime.parse(json['dateOfTransfer'] as String),
      assetId: json['assetId'] as String?,
      transferredTo: json['transferredTo'] as String?,
      mannerOfTransfer: $enumDecodeNullable(
          _$OtherIncomeMannerOfTransferEnumMap, json['mannerOfTransfer']),
      pricePaid: json['pricePaid'] as String?,
    );

Map<String, dynamic> _$OtherAssetsToJson(OtherAssets instance) =>
    <String, dynamic>{
      'description': instance.description,
      'dateOfTransfer': instance.dateOfTransfer?.toIso8601String(),
      'assetId': instance.assetId,
      'transferredTo': instance.transferredTo,
      'mannerOfTransfer':
          _$OtherIncomeMannerOfTransferEnumMap[instance.mannerOfTransfer],
      'pricePaid': instance.pricePaid,
    };

const _$OtherIncomeMannerOfTransferEnumMap = {
  OtherIncomeMannerOfTransfer.sold: 'sold',
  OtherIncomeMannerOfTransfer.donation: 'donation',
};
