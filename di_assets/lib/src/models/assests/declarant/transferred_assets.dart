import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

import 'package:di_assets/src/app/global/globals.dart';

import 'declarant_export.dart';

part 'transferred_assets.g.dart';

@JsonSerializable()
class TransferredProperty {
  final List<ImmovableTransferAssets>? immovableTransferAssets;
  final List<MovableTransferAssets>? movableTransferAssets;
  final List<CashTransferAssets>? cashTransferAssets;
  final OtherIncomeTransfer? otherIncomeTransfer;
  final List<OtherTransferAssets>? otherTransferAssets;
  final List<PresentTransferLiabilities>? presentTransferLiabilities;
  TransferredProperty({
    this.immovableTransferAssets,
    this.movableTransferAssets,
    this.cashTransferAssets,
    this.otherIncomeTransfer,
    this.otherTransferAssets,
    this.presentTransferLiabilities,
  });

  Map<String, dynamic> toJson() => _$TransferredPropertyToJson(this);

  factory TransferredProperty.fromJson(Map<String, dynamic> json) =>
      _$TransferredPropertyFromJson(json);
}

@JsonSerializable()
class PresentTransferLiabilities {
  final Creditor? creditor;
  final LiabilityType? liabilityType;
  final LiabilityDetails? liabilityDetails;
  PresentTransferLiabilities({
    this.creditor,
    this.liabilityType,
    this.liabilityDetails,
  });

  Map<String, dynamic> toJson() => _$PresentTransferLiabilitiesToJson(this);
  factory PresentTransferLiabilities.fromJson(Map<String, dynamic> json) =>
      _$PresentTransferLiabilitiesFromJson(json);
}

@JsonSerializable()
class OtherTransferAssets {
  final String? description;
  final DateTime? dateOfTransfer;
  final String? assetId;
  final String? transferredTo;
  final OtherIncomeMannerOfTransfer? mannerOfTransfer;
  final String? pricePaid;
  OtherTransferAssets({
    this.description,
    this.dateOfTransfer,
    this.assetId,
    this.transferredTo,
    this.mannerOfTransfer,
    this.pricePaid,
  });

  Map<String, dynamic> toJson() => _$OtherTransferAssetsToJson(this);

  factory OtherTransferAssets.fromJson(Map<String, dynamic> json) =>
      _$OtherTransferAssetsFromJson(json);
}

@JsonSerializable()
class OtherIncomeTransfer {
  final List<TrustOwned>? trustOwned;
  final List<NegotiableOwned>? negotiableOwned;
  OtherIncomeTransfer({
    this.trustOwned,
    this.negotiableOwned,
  });

  Map<String, dynamic> toJson() => _$OtherIncomeTransferToJson(this);

  factory OtherIncomeTransfer.fromJson(Map<String, dynamic> json) =>
      _$OtherIncomeTransferFromJson(json);
}

@JsonSerializable()
class CashTransferAssets {
  final String? ammountTransferred;
  final DateTime? dateOfTransfer;
  final String? transferredTo;
  final String? currency;
  final String? sourceOfFunds;
  final MannerOfTransfer? mannerOfTransfer;
  CashTransferAssets({
    this.ammountTransferred,
    this.dateOfTransfer,
    this.transferredTo,
    this.currency,
    this.sourceOfFunds,
    this.mannerOfTransfer,
  });

  Map<String, dynamic> toJson() => _$CashTransferAssetsToJson(this);

  factory CashTransferAssets.fromJson(Map<String, dynamic> json) =>
      _$CashTransferAssetsFromJson(json);
}

@JsonSerializable()
class MovableTransferAssets {
  final TypeOfAsset? typeOfAsset;
  final String? registrationNo;
  final TransferredPropertyMannerOfTransfer? mannerOfTransfer;
  final String? transferredTo;

  final DateTime? dateTransferred;
  MovableTransferAssets({
    this.typeOfAsset,
    this.registrationNo,
    this.mannerOfTransfer,
    this.transferredTo,
    this.dateTransferred,
  });

  Map<String, dynamic> toJson() => _$MovableTransferAssetsToJson(this);

  factory MovableTransferAssets.fromJson(Map<String, dynamic> json) =>
      _$MovableTransferAssetsFromJson(json);
}

@JsonSerializable()
class ImmovableTransferAssets {
  final String? description;
  final TransferredPropertyIdentityType? identityType;
  final String? plotSize;
  final Location? location;
  final TransferredPropertyMannerOfTransfer? mannerOfTransfer;

  final DateTime? dateOfTransfer;
  final String? transferredTo;
  final String? docId;
  ImmovableTransferAssets({
    this.description,
    this.identityType,
    this.plotSize,
    this.location,
    this.mannerOfTransfer,
    this.dateOfTransfer,
    this.transferredTo,
    this.docId,
  });

  Map<String, dynamic> toJson() => _$ImmovableTransferAssetsToJson(this);

  factory ImmovableTransferAssets.fromJson(Map<String, dynamic> json) =>
      _$ImmovableTransferAssetsFromJson(json);
}
