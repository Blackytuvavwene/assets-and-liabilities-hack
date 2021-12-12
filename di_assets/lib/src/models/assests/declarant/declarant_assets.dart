import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

import 'package:di_assets/src/models/assests/declarant/declarant_export.dart';
import 'package:di_assets/src/models/assests/declarant/transferred_assets.dart';

part 'declarant_assets.g.dart';

@JsonSerializable()
class DeclarantAssets {
  final List<Cash>? cash;
  final List<ImmovableAssets>? immovableAssets;
  final List<MovableAssets>? movableAssets;
  final List<OtherAssets>? otherAssets;
  final List<PresentLiabilities>? presentLiabilities;
  final List<OtherIncome>? otherIncome;
  final List<TransferredProperty>? transferredProperty;
  DeclarantAssets({
    this.cash,
    this.immovableAssets,
    this.movableAssets,
    this.otherAssets,
    this.presentLiabilities,
    this.otherIncome,
    this.transferredProperty,
  });

  Map<String, dynamic> toJson() => _$DeclarantAssetsToJson(this);

  factory DeclarantAssets.fromJson(Map<String, dynamic> json) =>
      _$DeclarantAssetsFromJson(json);
}
