namespace js vv.models
namespace php vv.models

include "../shared/pagination.thrift"

struct OrderStatusHistory {
  1:optional i32 id
  2:optional i32 orderId
  3:optional i32 orderStatus
  4:optional string notes
}

struct OrderStatusHistoryInsert{
  1:optional i32 orderId
  2:optional i32 orderStatus
  3:optional string notes
}

struct OrderStatusHistoryForm {
  1:optional i32 id
  2:optional i32 orderId
  3:optional i32 orderStatus
  4:optional string notes
}

struct OrderStatusHistoryFilter {
  1:optional i32 id
  2:optional i32 orderId
  3:optional i32 orderStatus
  4:optional string notes
}

struct OrderStatusHistoryQuery {
  1:optional i32 id
  2:optional i32 orderId
  3:optional i32 orderStatus
  4:optional string notes
}

struct PaginationOrderStatusHistory {
  1:pagination.Pagination pagination
  2:list<OrderStatusHistory> data
}