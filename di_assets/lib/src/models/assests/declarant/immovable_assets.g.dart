// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'immovable_assets.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImmovableAssets _$ImmovableAssetsFromJson(Map<String, dynamic> json) =>
    ImmovableAssets(
      description: json['description'] as String,
      ownershipType:
          $enumDecodeNullable(_$OwnerShipTypeEnumMap, json['ownershipType']),
      plotSize: json['plotSize'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      acquisitionType: $enumDecodeNullable(
          _$AcquisitionTypeEnumMap, json['acquisitionType']),
      jointOwnership: json['jointOwnership'] as bool?,
      coOwners: (json['coOwners'] as List<dynamic>?)
          ?.map((e) => CoOwners.fromJson(e as Map<String, dynamic>))
          .toList(),
      docId: json['docId'] as String?,
    );

Map<String, dynamic> _$ImmovableAssetsToJson(ImmovableAssets instance) =>
    <String, dynamic>{
      'description': instance.description,
      'ownershipType': _$OwnerShipTypeEnumMap[instance.ownershipType],
      'plotSize': instance.plotSize,
      'location': instance.location,
      'acquisitionType': _$AcquisitionTypeEnumMap[instance.acquisitionType],
      'jointOwnership': instance.jointOwnership,
      'coOwners': instance.coOwners,
      'docId': instance.docId,
    };

const _$OwnerShipTypeEnumMap = {
  OwnerShipType.surveyNo: 'surveyNo',
  OwnerShipType.plotNo: 'plotNo',
  OwnerShipType.deedNo: 'deedNo',
};

const _$AcquisitionTypeEnumMap = {
  AcquisitionType.purchase: 'purchase',
  AcquisitionType.lease: 'lease',
  AcquisitionType.transferred: 'transferred',
  AcquisitionType.donated: 'donated',
  AcquisitionType.other: 'other',
};

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      city: json['city'] as String?,
      state: json['state'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
    };

CoOwners _$CoOwnersFromJson(Map<String, dynamic> json) => CoOwners(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      nationalIdentity: $enumDecodeNullable(
          _$NationalIdentityEnumMap, json['nationalIdentity']),
      relation: json['relation'] as String?,
      latestValue: json['latestValue'] as String?,
      identity: json['identity'] as String?,
    );

Map<String, dynamic> _$CoOwnersToJson(CoOwners instance) => <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'nationalIdentity': _$NationalIdentityEnumMap[instance.nationalIdentity],
      'relation': instance.relation,
      'latestValue': instance.latestValue,
      'identity': instance.identity,
    };

const _$NationalIdentityEnumMap = {
  NationalIdentity.idCard: 'idCard',
  NationalIdentity.passport: 'passport',
};
