// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spouse_other_income.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpouseOtherIncome _$SpouseOtherIncomeFromJson(Map<String, dynamic> json) =>
    SpouseOtherIncome(
      trustOwned: (json['trustOwned'] as List<dynamic>?)
          ?.map((e) => SpouseTrustOwned.fromJson(e as Map<String, dynamic>))
          .toList(),
      negotiableOwned: (json['negotiableOwned'] as List<dynamic>?)
          ?.map(
              (e) => SpouseNegotiableOwned.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SpouseOtherIncomeToJson(SpouseOtherIncome instance) =>
    <String, dynamic>{
      'trustOwned': instance.trustOwned,
      'negotiableOwned': instance.negotiableOwned,
    };

SpouseTrustOwned _$SpouseTrustOwnedFromJson(Map<String, dynamic> json) =>
    SpouseTrustOwned(
      shares: json['shares'] == null
          ? null
          : SpouseShares.fromJson(json['shares'] as Map<String, dynamic>),
      pricePaid: json['pricePaid'] as String?,
      dateAcquired: json['dateAcquired'] == null
          ? null
          : DateTime.parse(json['dateAcquired'] as String),
      currentStatus: json['currentStatus'] as String?,
      sourceOfFunds: json['sourceOfFunds'] as String?,
      currentValue: json['currentValue'] as String?,
    );

Map<String, dynamic> _$SpouseTrustOwnedToJson(SpouseTrustOwned instance) =>
    <String, dynamic>{
      'shares': instance.shares,
      'pricePaid': instance.pricePaid,
      'dateAcquired': instance.dateAcquired?.toIso8601String(),
      'currentStatus': instance.currentStatus,
      'sourceOfFunds': instance.sourceOfFunds,
      'currentValue': instance.currentValue,
    };

SpouseShares _$SpouseSharesFromJson(Map<String, dynamic> json) => SpouseShares(
      details: json['details'] == null
          ? null
          : SpouseSharesDetails.fromJson(
              json['details'] as Map<String, dynamic>),
      shareCertificateNo: json['shareCertificateNo'] as String?,
      companyName: json['companyName'] as String?,
    );

Map<String, dynamic> _$SpouseSharesToJson(SpouseShares instance) =>
    <String, dynamic>{
      'details': instance.details,
      'shareCertificateNo': instance.shareCertificateNo,
      'companyName': instance.companyName,
    };

SpouseNegotiableOwned _$SpouseNegotiableOwnedFromJson(
        Map<String, dynamic> json) =>
    SpouseNegotiableOwned(
      sharesDetails: json['sharesDetails'] == null
          ? null
          : SpouseSharesDetails.fromJson(
              json['sharesDetails'] as Map<String, dynamic>),
      pricePaid: json['pricePaid'] as String?,
      dateAcquired: json['dateAcquired'] == null
          ? null
          : DateTime.parse(json['dateAcquired'] as String),
      currentStatus: json['currentStatus'] as String?,
      sourceOfFunds: json['sourceOfFunds'] as String?,
      currentValue: json['currentValue'] as String?,
    );

Map<String, dynamic> _$SpouseNegotiableOwnedToJson(
        SpouseNegotiableOwned instance) =>
    <String, dynamic>{
      'sharesDetails': instance.sharesDetails,
      'pricePaid': instance.pricePaid,
      'dateAcquired': instance.dateAcquired?.toIso8601String(),
      'currentStatus': instance.currentStatus,
      'sourceOfFunds': instance.sourceOfFunds,
      'currentValue': instance.currentValue,
    };

SpouseSharesDetails _$SpouseSharesDetailsFromJson(Map<String, dynamic> json) =>
    SpouseSharesDetails(
      number: json['number'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$SpouseSharesDetailsToJson(
        SpouseSharesDetails instance) =>
    <String, dynamic>{
      'number': instance.number,
      'type': instance.type,
    };
