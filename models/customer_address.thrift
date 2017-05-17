namespace js vv.models
namespace php vv.models

struct CustomerAddress {
  1:optional i32 customerId
  2:optional string type
  3:optional bool isDefault
  4:optional string fullName
  5:optional string phone
  6:optional string street
  7:optional string district
  8:optional string province
  9:optional string postalCode
  10:optional string countryCode
  11:optional string createdAt
  12:optional string updatedAt
  13:optional string createdBy
  14:optional string updatedBy
  15:optional i32 status
  16:optional i32 id
  17:optional string ward
  18:optional string customerName
}

struct CustomerAddressInsert {
  1:optional i32 customerId
  2:optional string type
  3:optional bool isDefault
  4:optional string fullName
  5:optional string phone
  6:optional string street
  7:optional string ward
  8:optional string city
  9:optional string postalCode
  10:optional string countryCode
  11:optional string province
  12:optional string district
  13:optional string customerName
}

struct CustomerAddressForm {
  1:optional string type
  2:optional bool isDefault
  3:optional string fullName
  4:optional string phone
  5:optional string street
  6:optional string ward
  7:optional string province
  8:optional string district
  9:optional string customerName
  10:optional i32 id
  11:optional i32 status
}
