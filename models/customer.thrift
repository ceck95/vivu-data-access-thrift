namespace js vv.models
namespace php vv.models

include "customer_address.thrift"

struct Customer {
  1:optional i32 id
  2:optional string email
  3:optional string phone
  4:optional string fullName
  5:optional string dob
  6:optional string gender
  7:optional string passwordHash
  8:optional customer_address.CustomerAddress address
  9:optional i32 status
  10:optional string createdAt
  11:optional string updatedAt
  12:optional string createdBy
  13:optional string updatedBy
}

struct CustomerInsert {
  1:optional string email
  2:optional string phone
  3:optional string fullName
  4:optional string dob
  5:optional string gender
  6:optional string passwordHash
}

struct CustomerForm {
  1:required i32 id
  2:optional string phone
  3:optional string fullName
  4:optional string dob
  5:optional string gender
  6:optional string passwordHash
}
