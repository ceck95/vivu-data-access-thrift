namespace js vv.models
namespace php vv.models

include '../shared/pagination.thrift'
include './customer_address.thrift'
include './order_payment.thrift'


struct Order {
  1:optional i32 id
  2:optional i32 orderStatus
  3:optional i32 customerId
  4:optional string customerFullName
  5:optional string customerPhone
  6:optional i32 quoteId
  7:optional i32 shippingAddressId
  8:optional double shippingAmount
  9:optional double subtotal
  10:optional double grandTotal
  11:optional customer_address.CustomerAddress address
  12:optional order_payment.OrderPayment orderPayment
  13:optional string createdAt
  14:optional string code
}

struct OrderInsert{
  1:optional i32 orderStatus
  2:optional i32 customerId
  3:optional string customerFullName
  4:optional string customerPhone
  5:optional i32 quoteId
  6:optional i32 shippingAddressId
  7:optional double shippingAmount
  8:optional double subtotal
  9:optional double grandTotal
}

struct OrderForm {
  1:optional i32 id
  2:optional i32 orderStatus
  3:optional i32 customerId
  4:optional string customerFullName
  5:optional string customerPhone
  6:optional i32 quoteId
  7:optional i32 shippingAddressId
  8:optional double shippingAmount
  9:optional double subtotal
  10:optional double grandTotal
  11:optional i32 status
}

struct OrderFilter {
  1:optional i32 orderStatus
  2:optional i32 customerId
  3:optional string customerFullName
  4:optional string customerPhone
  5:optional i32 quoteId
  6:optional i32 shippingAddressId
  7:optional double shippingAmount
  8:optional double subtotal
  9:optional double grandTotal
}

struct OrderQuery {
  1:optional i32 orderStatus
  2:optional i32 customerId
  3:optional string customerFullName
  4:optional string customerPhone
  5:optional i32 quoteId
  6:optional i32 shippingAddressId
  7:optional double shippingAmount
  8:optional double subtotal
  9:optional double grandTotal
}

struct PaginationOrder {
  1:pagination.Pagination pagination
  2:list<Order> data
}