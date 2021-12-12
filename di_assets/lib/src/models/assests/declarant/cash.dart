// cash assests class

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

import 'package:di_assets/src/app/global/globals.dart';

part 'cash.g.dart';

@JsonSerializable()
class Cash {
  final String? ammountTransferred;
  final DateTime? dateOfTransfer;
  final String? transferredTo;
  final String? currency;
  final String? sourceOfFunds;
  final MannerOfTransfer? mannerOfTransfer;
  Cash({
    this.ammountTransferred,
    this.dateOfTransfer,
    this.transferredTo,
    this.currency,
    this.sourceOfFunds,
    this.mannerOfTransfer,
  });

  Map<String, dynamic> toJson() => _$CashToJson(this);

  factory Cash.fromJson(Map<String, dynamic> json) => _$CashFromJson(json);
}
