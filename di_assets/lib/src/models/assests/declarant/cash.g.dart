// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cash.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cash _$CashFromJson(Map<String, dynamic> json) => Cash(
      ammountTransferred: json['ammountTransferred'] as String?,
      dateOfTransfer: json['dateOfTransfer'] == null
          ? null
          : DateTime.parse(json['dateOfTransfer'] as String),
      transferredTo: json['transferredTo'] as String?,
      currency: json['currency'] as String?,
      sourceOfFunds: json['sourceOfFunds'] as String?,
      mannerOfTransfer: $enumDecodeNullable(
          _$MannerOfTransferEnumMap, json['mannerOfTransfer']),
    );

Map<String, dynamic> _$CashToJson(Cash instance) => <String, dynamic>{
      'ammountTransferred': instance.ammountTransferred,
      'dateOfTransfer': instance.dateOfTransfer?.toIso8601String(),
      'transferredTo': instance.transferredTo,
      'currency': instance.currency,
      'sourceOfFunds': instance.sourceOfFunds,
      'mannerOfTransfer': _$MannerOfTransferEnumMap[instance.mannerOfTransfer],
    };

const _$MannerOfTransferEnumMap = {
  MannerOfTransfer.payment: 'payment',
  MannerOfTransfer.donation: 'donation',
};
