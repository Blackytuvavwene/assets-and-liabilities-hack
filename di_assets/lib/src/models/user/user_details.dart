// type of national identity enum
enum NationalIdentity {
  idCard,
  passport,
}

/// marital status enum
enum MaritalStatus {
  single,
  married,
  divorced,
  widowed,
}

// type of employment status enum
enum EmploymentStatus {
  contract,
  selfEmployed,
  unemployed,
  student,
  permanent,
  temporary,
}

// personal user information class
class UserDetails {
  final String? firstName;
  final String? lastName;
  final String? otherNames;
  final DateTime? dateOfBirth;
  final PlaceOfBirth? placeOfBirth;
  final NationalIdentity? nationalIdentity;
  final String? citizenShip;
  final MaritalStatus? maritalStatus;
  final UserAddress? address;
  final EmploymentDetails? employmentDetails;
  final String? taxNo;

  UserDetails({
    this.firstName,
    this.lastName,
    this.otherNames,
    this.dateOfBirth,
    this.placeOfBirth,
    this.nationalIdentity,
    this.citizenShip,
    this.maritalStatus,
    this.address,
    this.employmentDetails,
    this.taxNo,
  });
}

// personal user employment details class
class EmploymentDetails {
  final String? employerName;
  final String? rank;
  final DateTime? currentEmploymentDate;
  final String? salaryPerAnnum;
  final String? allowancePerAnnum;
  final String? lastEmploymentRank;
  final String? employerSalary;
  final String? employerStartDate;
  final String? employerEndDate;
  final EmploymentStatus? employmentStatus;
  final DateOfLastAppointment? dateOfLastAppointment;

  EmploymentDetails({
    this.employerName,
    this.rank,
    this.currentEmploymentDate,
    this.salaryPerAnnum,
    this.allowancePerAnnum,
    this.lastEmploymentRank,
    this.employerSalary,
    this.employerStartDate,
    this.employerEndDate,
    this.employmentStatus,
    this.dateOfLastAppointment,
  });
}

//personal date of last employment class
class DateOfLastAppointment {
  final DateTime? from;
  final DateTime? to;

  DateOfLastAppointment({
    this.from,
    this.to,
  });
}

// personal user address class
class UserAddress {
  final String? physicalAddress;

  final String? city;
  final String? state;
  final String? country;
  final String? postalCode;
  final String? postalAddress;

  UserAddress({
    this.physicalAddress,
    this.city,
    this.state,
    this.country,
    this.postalCode,
    this.postalAddress,
  });
}

// personal user place of birth class
class PlaceOfBirth {
  final String? district;
  final String? village;
  final String? country;

  PlaceOfBirth({
    this.district,
    this.village,
    this.country,
  });
}
