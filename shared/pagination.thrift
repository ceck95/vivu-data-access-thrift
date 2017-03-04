namespace js nexx.shared
namespace php nexx.shared

/**
 * Pagination data,
 * including page size, page number, total pages and total records
 */
struct Pagination {
    1:optional i32 pageSize,
    2:optional i32 pageNumber,
    3:optional i32 count,
    4:optional i32 totalPages,
    5:optional i32 total
}

/**
 * Pagination request data
 * including page size, page number, includes relations
 */
struct PagingQuery {
    1:optional string order,
    2:optional i32 pageSize,
    3:optional i32 pageNumber,
    4:optional list<string> includes
}
