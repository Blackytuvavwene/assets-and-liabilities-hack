// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'other_income.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtherIncome _$OtherIncomeFromJson(Map<String, dynamic> json) => OtherIncome(
      trustOwned: (json['trustOwned'] as List<dynamic>?)
          ?.map((e) => TrustOwned.fromJson(e as Map<String, dynamic>))
          .toList(),
      negotiableOwned: (json['negotiableOwned'] as List<dynamic>?)
          ?.map((e) => NegotiableOwned.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OtherIncomeToJson(OtherIncome instance) =>
    <String, dynamic>{
      'trustOwned': instance.trustOwned,
      'negotiableOwned': instance.negotiableOwned,
    };

Shares _$SharesFromJson(Map<String, dynamic> json) => Shares(
      sharesNo: json['sharesNo'] as String?,
      typeOfShares: json['typeOfShares'] as String?,
    );

Map<String, dynamic> _$SharesToJson(Shares instance) => <String, dynamic>{
      'sharesNo': instance.sharesNo,
      'typeOfShares': instance.typeOfShares,
    };

TrustOwned _$TrustOwnedFromJson(Map<String, dynamic> json) => TrustOwned(
      shares: json['shares'] == null
          ? null
          : Shares.fromJson(json['shares'] as Map<String, dynamic>),
      dateOfTransfer: json['dateOfTransfer'] == null
          ? null
          : DateTime.parse(json['dateOfTransfer'] as String),
      transferredTo: json['transferredTo'] as String?,
      mannerOfTransfer: $enumDecodeNullable(
          _$OtherIncomeMannerOfTransferEnumMap, json['mannerOfTransfer']),
      pricePaid: json['pricePaid'] as String?,
    );

Map<String, dynamic> _$TrustOwnedToJson(TrustOwned instance) =>
    <String, dynamic>{
      'shares': instance.shares,
      'dateOfTransfer': instance.dateOfTransfer?.toIso8601String(),
      'transferredTo': instance.transferredTo,
      'mannerOfTransfer':
          _$OtherIncomeMannerOfTransferEnumMap[instance.mannerOfTransfer],
      'pricePaid': instance.pricePaid,
    };

const _$OtherIncomeMannerOfTransferEnumMap = {
  OtherIncomeMannerOfTransfer.sold: 'sold',
  OtherIncomeMannerOfTransfer.donation: 'donation',
};

NegotiableOwned _$NegotiableOwnedFromJson(Map<String, dynamic> json) =>
    NegotiableOwned(
      shares: json['shares'] == null
          ? null
          : Shares.fromJson(json['shares'] as Map<String, dynamic>),
      dateOfTransfer: json['dateOfTransfer'] == null
          ? null
          : DateTime.parse(json['dateOfTransfer'] as String),
      transferredTo: json['transferredTo'] as String?,
      mannerOfTransfer: $enumDecodeNullable(
          _$OtherIncomeMannerOfTransferEnumMap, json['mannerOfTransfer']),
      pricePaid: json['pricePaid'] as String?,
    );

Map<String, dynamic> _$NegotiableOwnedToJson(NegotiableOwned instance) =>
    <String, dynamic>{
      'shares': instance.shares,
      'dateOfTransfer': instance.dateOfTransfer?.toIso8601String(),
      'transferredTo': instance.transferredTo,
      'mannerOfTransfer':
          _$OtherIncomeMannerOfTransferEnumMap[instance.mannerOfTransfer],
      'pricePaid': instance.pricePaid,
    };
