namespace js vv.models
namespace php vv.models

struct ProductColor {
  1:optional i32 id
  2:optional i32 productId
  3:optional string colorName
  4:optional string referProductImagePath
  5:optional double price
  6:optional i32 priority
  7:optional bool isSoldOut
  8:optional i32 status
  9:optional string createdAt
  10:optional string updatedAt
  11:optional string createdBy
  12:optional string updatedBy 
}
