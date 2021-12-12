import 'package:json_annotation/json_annotation.dart';

// enum for type of ownership registration number
enum OwnerShipType {
  @JsonValue('surveyNo')
  surveyNo,
  @JsonValue('plotNo')
  plotNo,
  @JsonValue('deedNo')
  deedNo,
}

// manner of acquisition enum
enum AcquisitionType {
  @JsonValue('purchase')
  purchase,
  @JsonValue('lease')
  lease,
  @JsonValue('transferred')
  transferred,
  @JsonValue('donated')
  donated,
  @JsonValue('other')
  other,
}

// type of national identity enum
enum NationalIdentity {
  @JsonValue('idCard')
  idCard,
  @JsonValue('passport')
  passport,
}

/// marital status enum
enum MaritalStatus {
  @JsonValue('single')
  single,
  @JsonValue('married')
  married,
  @JsonValue('divorced')
  divorced,
  @JsonValue('widowed')
  widowed,
}

// type of employment status enum
enum EmploymentStatus {
  @JsonValue('employed')
  contract,
  @JsonValue('selfEmployed')
  selfEmployed,
  @JsonValue('unemployed')
  unemployed,
  @JsonValue('student')
  student,
  @JsonValue('permanent')
  permanent,
  @JsonValue('temporary')
  temporary,
}

//type of source of finance enum
enum SourceOfFinance {
  @JsonValue('bought')
  bought,
  @JsonValue('donated')
  donated,
  @JsonValue('won')
  won,
}

// manner of transfer enum
enum MannerOfTransfer {
  @JsonValue('payment')
  payment,
  @JsonValue('donation')
  donation,
}

// manner of other income transfer enum
enum OtherIncomeMannerOfTransfer {
  @JsonValue('sold')
  sold,
  @JsonValue('donation')
  donation,
}

// type of liability enum
enum LiabilityType {
  @JsonValue('mortage')
  mortgage,
  @JsonValue('loan')
  loan,
  @JsonValue('overdraft')
  overdraft,
  @JsonValue('other')
  other,
}

//type of manner of transfer for transfered property enum
enum TransferredPropertyMannerOfTransfer {
  @JsonValue('sold')
  sold,
  @JsonValue('donation')
  donation,
}

//type of identity no for transfered property enum
enum TransferredPropertyIdentityType {
  @JsonValue('surveyNo')
  surveyNo,
  @JsonValue('plotNo')
  plotNo,
  @JsonValue('deedNo')
  deedNo,
}
