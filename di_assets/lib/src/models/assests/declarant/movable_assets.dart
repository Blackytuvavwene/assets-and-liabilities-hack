// movable assets class
import 'package:di_assets/src/app/global/globals.dart';

class MovableAssests {
  final List<DeclarantOwned>? declarantOwned;
  final List<JointOwned>? jointOwned;
  MovableAssests({
    this.declarantOwned,
    this.jointOwned,
  });
}

// declarant jointly owned assests class
class JointOwned {
  final TypeOfAsset? typeOfAsset;
  final String? registrationNo;
  final String? pricePaid;
  final String? latestValue;
  final String? acquiredFrom;
  final SourceOfFinance? sourceOfFinance;
  final String? currentStatus;
  final DateTime? dateAcquired;
  JointOwned({
    this.typeOfAsset,
    this.registrationNo,
    this.pricePaid,
    this.latestValue,
    this.acquiredFrom,
    this.sourceOfFinance,
    this.currentStatus,
    this.dateAcquired,
  });
}

// type of assets class
class TypeOfAsset {
  final String? type;
  final String? make;
  TypeOfAsset({
    this.type,
    this.make,
  });
}

// declarant owned assests class
class DeclarantOwned {
  final TypeOfAsset? typeOfAsset;
  final String? registrationNo;
  final String? pricePaid;
  final String? latestValue;
  final String? acquiredFrom;
  final SourceOfFinance? sourceOfFinance;
  final String? currentStatus;
  final DateTime? dateAcquired;
  DeclarantOwned({
    this.typeOfAsset,
    this.registrationNo,
    this.pricePaid,
    this.latestValue,
    this.acquiredFrom,
    this.sourceOfFinance,
    this.currentStatus,
    this.dateAcquired,
  });
}
