// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spouse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Spouse _$SpouseFromJson(Map<String, dynamic> json) => Spouse(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      occupation: json['occupation'] as String?,
      immovableAssets: (json['immovableAssets'] as List<dynamic>?)
          ?.map((e) => ImmovableAssets.fromJson(e as Map<String, dynamic>))
          .toList(),
      movableAssets: (json['movableAssets'] as List<dynamic>?)
          ?.map((e) => MovableAssets.fromJson(e as Map<String, dynamic>))
          .toList(),
      spouseCash: (json['spouseCash'] as List<dynamic>?)
          ?.map((e) => SpouseCash.fromJson(e as Map<String, dynamic>))
          .toList(),
      otherAssets: (json['otherAssets'] as List<dynamic>?)
          ?.map((e) => SpouseOtherAssets.fromJson(e as Map<String, dynamic>))
          .toList(),
      otherIncome: (json['otherIncome'] as List<dynamic>?)
          ?.map((e) => SpouseOtherIncome.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SpouseToJson(Spouse instance) => <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'occupation': instance.occupation,
      'immovableAssets': instance.immovableAssets,
      'movableAssets': instance.movableAssets,
      'spouseCash': instance.spouseCash,
      'otherAssets': instance.otherAssets,
      'otherIncome': instance.otherIncome,
    };

SpouseCash _$SpouseCashFromJson(Map<String, dynamic> json) => SpouseCash(
      nameOfAccountHolder: json['nameOfAccountHolder'] as String?,
      sourceOfFunds: json['sourceOfFunds'] as String?,
      bank: json['bank'] == null
          ? null
          : Bank.fromJson(json['bank'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SpouseCashToJson(SpouseCash instance) =>
    <String, dynamic>{
      'nameOfAccountHolder': instance.nameOfAccountHolder,
      'sourceOfFunds': instance.sourceOfFunds,
      'bank': instance.bank,
    };

Bank _$BankFromJson(Map<String, dynamic> json) => Bank(
      name: json['name'] as String?,
      accountNumber: json['accountNumber'] as String?,
      location: json['location'] as String?,
      accountType: json['accountType'] as String?,
      amount: json['amount'] as String?,
      currency: json['currency'] as String?,
    );

Map<String, dynamic> _$BankToJson(Bank instance) => <String, dynamic>{
      'name': instance.name,
      'accountNumber': instance.accountNumber,
      'location': instance.location,
      'accountType': instance.accountType,
      'amount': instance.amount,
      'currency': instance.currency,
    };
