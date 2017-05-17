namespace js vv.models
namespace php vv.models

include "../shared/pagination.thrift"
include "./category.thrift"
include "./category_group.thrift"
include "./product_color.thrift"

struct Product {
  1:optional i32 id
  2:optional i32 categoryId
  3:optional string name
  4:optional string sku
  5:optional string metaDesc
  6:optional string notes
  7:optional string details
  8:optional string urlKey
  9:optional string imagePath
  10:optional double basePrice
  11:optional bool isSoldOut
  12:optional i32 status
  13:optional string createdAt
  14:optional string updatedAt
  15:optional string createdBy
  16:optional string updatedBy
  17:optional category.Category category
  18:optional category_group.CategoryGroup categoryGroup
  19:optional product_color.ProductColor productColor
  20:optional bool isProductColor
  21:optional string search
  22:optional string searchFull
}

struct ProductFilter{
  1:optional string name
  2:optional string sku
  3:optional i32 categoryId
  4:optional i32 categoryGroupId
  5:optional string urlKeyCategory
  6:optional string urlKeyCategoryGroup
  7:optional string search
  8:optional string searchFull
  9:optional list<i32> price
}

struct PaginationProduct {
  1:pagination.Pagination pagination
  2:list<Product> data
}
