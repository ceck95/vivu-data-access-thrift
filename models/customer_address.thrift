namespace js vv.models
namespace php vv.models

struct CustomerAddress {
  1:optional i32 customerId
  2:optional string type
  3:optional bool isDefault
  4:optional string fullName
  5:optional string phone
  6:optional string street
  7:optional string state
  8:optional string city
  9:optional string postalCode
  10:optional string countryCode
  11:optional string createdAt
  12:optional string updatedAt
  13:optional string createdBy
  14:optional string updatedBy
  15:optional i32 status
  16:optional i32 id
}

struct CustomerAddressInsert {
  1:optional i32 customerId
  2:optional string type
  3:optional bool isDefault
  4:optional string fullName
  5:optional string phone
  6:optional string street
  7:optional string state
  8:optional string city
  9:optional string postalCode
  10:optional string countryCode
}
