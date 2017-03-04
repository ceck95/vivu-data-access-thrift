namespace js nexx.shared
namespace php nexx.shared

/**
 * Update options
 */
struct UpdateOptions {

    1:optional bool allowNull = false
    2:optional bool allowZero = true
    3:optional bool allowEmpty = false
}

/**
 * Pagination request data
 * including relations
 */
struct SelectOptions {
    1:optional list<string> includes
    2:optional string order
    3:optional i32 limit
    4:optional i32 offset
}
