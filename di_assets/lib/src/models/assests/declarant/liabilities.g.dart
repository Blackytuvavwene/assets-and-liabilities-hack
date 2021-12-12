// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'liabilities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PresentLiabilities _$PresentLiabilitiesFromJson(Map<String, dynamic> json) =>
    PresentLiabilities(
      creditor: json['creditor'] == null
          ? null
          : Creditor.fromJson(json['creditor'] as Map<String, dynamic>),
      liabilityType:
          $enumDecodeNullable(_$LiabilityTypeEnumMap, json['liabilityType']),
      liabilityDetails: json['liabilityDetails'] == null
          ? null
          : LiabilityDetails.fromJson(
              json['liabilityDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PresentLiabilitiesToJson(PresentLiabilities instance) =>
    <String, dynamic>{
      'creditor': instance.creditor,
      'liabilityType': _$LiabilityTypeEnumMap[instance.liabilityType],
      'liabilityDetails': instance.liabilityDetails,
    };

const _$LiabilityTypeEnumMap = {
  LiabilityType.mortgage: 'mortage',
  LiabilityType.loan: 'loan',
  LiabilityType.overdraft: 'overdraft',
  LiabilityType.other: 'other',
};

Creditor _$CreditorFromJson(Map<String, dynamic> json) => Creditor(
      creditorName: json['creditorName'] as String?,
      creditorAddress: json['creditorAddress'] as String?,
    );

Map<String, dynamic> _$CreditorToJson(Creditor instance) => <String, dynamic>{
      'creditorName': instance.creditorName,
      'creditorAddress': instance.creditorAddress,
    };

LiabilityDetails _$LiabilityDetailsFromJson(Map<String, dynamic> json) =>
    LiabilityDetails(
      amount: json['amount'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$LiabilityDetailsToJson(LiabilityDetails instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'date': instance.date?.toIso8601String(),
    };
