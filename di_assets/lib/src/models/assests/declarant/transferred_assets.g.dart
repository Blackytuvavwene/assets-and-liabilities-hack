// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transferred_assets.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransferredProperty _$TransferredPropertyFromJson(Map<String, dynamic> json) =>
    TransferredProperty(
      immovableTransferAssets:
          (json['immovableTransferAssets'] as List<dynamic>?)
              ?.map((e) =>
                  ImmovableTransferAssets.fromJson(e as Map<String, dynamic>))
              .toList(),
      movableTransferAssets: (json['movableTransferAssets'] as List<dynamic>?)
          ?.map(
              (e) => MovableTransferAssets.fromJson(e as Map<String, dynamic>))
          .toList(),
      cashTransferAssets: (json['cashTransferAssets'] as List<dynamic>?)
          ?.map((e) => CashTransferAssets.fromJson(e as Map<String, dynamic>))
          .toList(),
      otherIncomeTransfer: json['otherIncomeTransfer'] == null
          ? null
          : OtherIncomeTransfer.fromJson(
              json['otherIncomeTransfer'] as Map<String, dynamic>),
      otherTransferAssets: (json['otherTransferAssets'] as List<dynamic>?)
          ?.map((e) => OtherTransferAssets.fromJson(e as Map<String, dynamic>))
          .toList(),
      presentTransferLiabilities: (json['presentTransferLiabilities']
              as List<dynamic>?)
          ?.map((e) =>
              PresentTransferLiabilities.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TransferredPropertyToJson(
        TransferredProperty instance) =>
    <String, dynamic>{
      'immovableTransferAssets': instance.immovableTransferAssets,
      'movableTransferAssets': instance.movableTransferAssets,
      'cashTransferAssets': instance.cashTransferAssets,
      'otherIncomeTransfer': instance.otherIncomeTransfer,
      'otherTransferAssets': instance.otherTransferAssets,
      'presentTransferLiabilities': instance.presentTransferLiabilities,
    };

PresentTransferLiabilities _$PresentTransferLiabilitiesFromJson(
        Map<String, dynamic> json) =>
    PresentTransferLiabilities(
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

Map<String, dynamic> _$PresentTransferLiabilitiesToJson(
        PresentTransferLiabilities instance) =>
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

OtherTransferAssets _$OtherTransferAssetsFromJson(Map<String, dynamic> json) =>
    OtherTransferAssets(
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

Map<String, dynamic> _$OtherTransferAssetsToJson(
        OtherTransferAssets instance) =>
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

OtherIncomeTransfer _$OtherIncomeTransferFromJson(Map<String, dynamic> json) =>
    OtherIncomeTransfer(
      trustOwned: (json['trustOwned'] as List<dynamic>?)
          ?.map((e) => TrustOwned.fromJson(e as Map<String, dynamic>))
          .toList(),
      negotiableOwned: (json['negotiableOwned'] as List<dynamic>?)
          ?.map((e) => NegotiableOwned.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OtherIncomeTransferToJson(
        OtherIncomeTransfer instance) =>
    <String, dynamic>{
      'trustOwned': instance.trustOwned,
      'negotiableOwned': instance.negotiableOwned,
    };

CashTransferAssets _$CashTransferAssetsFromJson(Map<String, dynamic> json) =>
    CashTransferAssets(
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

Map<String, dynamic> _$CashTransferAssetsToJson(CashTransferAssets instance) =>
    <String, dynamic>{
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

MovableTransferAssets _$MovableTransferAssetsFromJson(
        Map<String, dynamic> json) =>
    MovableTransferAssets(
      typeOfAsset: json['typeOfAsset'] == null
          ? null
          : TypeOfAsset.fromJson(json['typeOfAsset'] as Map<String, dynamic>),
      registrationNo: json['registrationNo'] as String?,
      mannerOfTransfer: $enumDecodeNullable(
          _$TransferredPropertyMannerOfTransferEnumMap,
          json['mannerOfTransfer']),
      transferredTo: json['transferredTo'] as String?,
      dateTransferred: json['dateTransferred'] == null
          ? null
          : DateTime.parse(json['dateTransferred'] as String),
    );

Map<String, dynamic> _$MovableTransferAssetsToJson(
        MovableTransferAssets instance) =>
    <String, dynamic>{
      'typeOfAsset': instance.typeOfAsset,
      'registrationNo': instance.registrationNo,
      'mannerOfTransfer': _$TransferredPropertyMannerOfTransferEnumMap[
          instance.mannerOfTransfer],
      'transferredTo': instance.transferredTo,
      'dateTransferred': instance.dateTransferred?.toIso8601String(),
    };

const _$TransferredPropertyMannerOfTransferEnumMap = {
  TransferredPropertyMannerOfTransfer.sold: 'sold',
  TransferredPropertyMannerOfTransfer.donation: 'donation',
};

ImmovableTransferAssets _$ImmovableTransferAssetsFromJson(
        Map<String, dynamic> json) =>
    ImmovableTransferAssets(
      description: json['description'] as String?,
      identityType: $enumDecodeNullable(
          _$TransferredPropertyIdentityTypeEnumMap, json['identityType']),
      plotSize: json['plotSize'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      mannerOfTransfer: $enumDecodeNullable(
          _$TransferredPropertyMannerOfTransferEnumMap,
          json['mannerOfTransfer']),
      dateOfTransfer: json['dateOfTransfer'] == null
          ? null
          : DateTime.parse(json['dateOfTransfer'] as String),
      transferredTo: json['transferredTo'] as String?,
      docId: json['docId'] as String?,
    );

Map<String, dynamic> _$ImmovableTransferAssetsToJson(
        ImmovableTransferAssets instance) =>
    <String, dynamic>{
      'description': instance.description,
      'identityType':
          _$TransferredPropertyIdentityTypeEnumMap[instance.identityType],
      'plotSize': instance.plotSize,
      'location': instance.location,
      'mannerOfTransfer': _$TransferredPropertyMannerOfTransferEnumMap[
          instance.mannerOfTransfer],
      'dateOfTransfer': instance.dateOfTransfer?.toIso8601String(),
      'transferredTo': instance.transferredTo,
      'docId': instance.docId,
    };

const _$TransferredPropertyIdentityTypeEnumMap = {
  TransferredPropertyIdentityType.surveyNo: 'surveyNo',
  TransferredPropertyIdentityType.plotNo: 'plotNo',
  TransferredPropertyIdentityType.deedNo: 'deedNo',
};
