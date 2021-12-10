// immovable assets class
import 'package:di_assets/src/app/global/globals.dart';

class ImmovableAssets {
  final String description;
  final OwnerShipType? ownershipType;
  final String? plotSize;
  final Location? location;
  final AcquisitionType? acquisitionType;
  final bool? jointOwnership;
  final List<CoOwners>? coOwners;
  ImmovableAssets({
    required this.description,
    this.ownershipType,
    this.plotSize,
    this.location,
    this.acquisitionType,
    this.jointOwnership,
    this.coOwners,
  });
}

// location class
class Location {
  final String? city;
  final String? state;
  final String? country;
  Location({
    this.city,
    this.state,
    this.country,
  });
}

// co-owners class
class CoOwners {
  final String? firstName;
  final String? lastName;
  final NationalIdentity? nationalIdentity;
  final String? relation;
  final String? latestValue;

  CoOwners({
    this.firstName,
    this.lastName,
    this.nationalIdentity,
    this.relation,
    this.latestValue,
  });
}
