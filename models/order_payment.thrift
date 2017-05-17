namespace js vv.models
namespace php vv.models

struct OrderPayment {
  1:optional i32 id
  2:optional i32 orderId
  3:optional string method
}

struct OrderPaymentInsert {
  1:optional i32 orderId
  2:optional string method
}

struct OrderPaymentForm {
  1:optional i32 id
  2:optional i32 orderId
  3:optional string method
  4:optional i32 status
}
