// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'declarant_assets.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeclarantAssets _$DeclarantAssetsFromJson(Map<String, dynamic> json) =>
    DeclarantAssets(
      cash: (json['cash'] as List<dynamic>?)
          ?.map((e) => Cash.fromJson(e as Map<String, dynamic>))
          .toList(),
      immovableAssets: (json['immovableAssets'] as List<dynamic>?)
          ?.map((e) => ImmovableAssets.fromJson(e as Map<String, dynamic>))
          .toList(),
      movableAssets: (json['movableAssets'] as List<dynamic>?)
          ?.map((e) => MovableAssets.fromJson(e as Map<String, dynamic>))
          .toList(),
      otherAssets: (json['otherAssets'] as List<dynamic>?)
          ?.map((e) => OtherAssets.fromJson(e as Map<String, dynamic>))
          .toList(),
      presentLiabilities: (json['presentLiabilities'] as List<dynamic>?)
          ?.map((e) => PresentLiabilities.fromJson(e as Map<String, dynamic>))
          .toList(),
      otherIncome: (json['otherIncome'] as List<dynamic>?)
          ?.map((e) => OtherIncome.fromJson(e as Map<String, dynamic>))
          .toList(),
      transferredProperty: (json['transferredProperty'] as List<dynamic>?)
          ?.map((e) => TransferredProperty.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DeclarantAssetsToJson(DeclarantAssets instance) =>
    <String, dynamic>{
      'cash': instance.cash,
      'immovableAssets': instance.immovableAssets,
      'movableAssets': instance.movableAssets,
      'otherAssets': instance.otherAssets,
      'presentLiabilities': instance.presentLiabilities,
      'otherIncome': instance.otherIncome,
      'transferredProperty': instance.transferredProperty,
    };
