namespace js vv.models
namespace php vv.models

struct QuotePayment {
  1:optional i32 id
  2:optional i32 quoteId
  3:optional string method
}

struct QuotePaymentInsert {
  1:optional i32 quoteId
  2:optional string method
}

struct QuotePaymentForm {
  1:optional i32 id
  2:optional i32 quoteId
  3:optional string method
  4:optional i32 status
}
