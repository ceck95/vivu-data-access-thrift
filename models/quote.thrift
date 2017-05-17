namespace js vv.models
namespace php vv.models

struct Quote {
  1:optional i32 id
  2:optional i32 orderId
  3:optional i32 subtotal
  4:optional i32 grandTotal
  5:optional string checkoutMethod
  6:optional i32 customerId
  7:optional i32 customerAddressId
}

struct QuoteInsert {
  1:optional i32 orderId
  2:optional i32 subtotal
  3:optional i32 grandTotal
  4:optional string checkoutMethod
  5:optional i32 customerId
  6:optional i32 customerAddressId
}

struct QuoteForm {
  1:optional i32 id
  2:optional i32 orderId
  3:optional i32 subtotal
  4:optional i32 grandTotal
  5:optional string checkoutMethod
  6:optional i32 customerId
  7:optional i32 customerAddressId
}
