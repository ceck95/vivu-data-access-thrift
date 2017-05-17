namespace js vv.models
namespace php vv.models

include "./product.thrift"
include "./product_color.thrift"

struct QuoteItem {
  1:optional i32 id
  2:optional i32 quoteId
  3:optional i32 productId
  4:optional i32 selectedProductColorId
  5:optional double quantity
  6:optional double basePrice
  7:optional product.Product product
  8:optional product_color.ProductColor productColor
}


struct QuoteItemInsert {
  1:optional i32 quoteId
  2:optional i32 productId
  3:optional i32 selectedProductColorId
  4:optional double quantity
  5:optional double basePrice
}

struct QuoteItemForm {
  1:optional i32 id
  2:optional double quantity
  3:optional double basePrice
  4:optional i32 status
}
