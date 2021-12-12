import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

import 'package:di_assets/src/app/global/globals.dart';
import 'package:di_assets/src/models/assests/declarant/declarant_export.dart';
import 'package:di_assets/src/models/assests/spouse/spouse_other_assets.dart';
import 'package:di_assets/src/models/assests/spouse/spouse_other_income.dart';

part 'spouse.g.dart';

@JsonSerializable()
class Spouse {
  final String? firstName;
  final String? lastName;
  final String? occupation;
  final List<ImmovableAssets>? immovableAssets;
  final List<MovableAssets>? movableAssets;
  final List<SpouseCash>? spouseCash;
  final List<SpouseOtherAssets>? otherAssets;
  final List<SpouseOtherIncome>? otherIncome;
  Spouse({
    this.firstName,
    this.lastName,
    this.occupation,
    this.immovableAssets,
    this.movableAssets,
    this.spouseCash,
    this.otherAssets,
    this.otherIncome,
  });

  Map<String, dynamic> toJson() => _$SpouseToJson(this);

  factory Spouse.fromJson(Map<String, dynamic> json) => _$SpouseFromJson(json);
}

@JsonSerializable()
class SpouseCash {
  final String? nameOfAccountHolder;
  final String? sourceOfFunds;

  final Bank? bank;
  SpouseCash({
    this.nameOfAccountHolder,
    this.sourceOfFunds,
    this.bank,
  });

  Map<String, dynamic> toJson() => _$SpouseCashToJson(this);

  factory SpouseCash.fromJson(Map<String, dynamic> json) =>
      _$SpouseCashFromJson(json);
}

@JsonSerializable()
class Bank {
  final String? name;
  final String? accountNumber;
  final String? location;
  final String? accountType;
  final String? amount;
  final String? currency;
  Bank({
    this.name,
    this.accountNumber,
    this.location,
    this.accountType,
    this.amount,
    this.currency,
  });

  Map<String, dynamic> toJson() => _$BankToJson(this);
  factory Bank.fromJson(Map<String, dynamic> json) => _$BankFromJson(json);
}
