namespace js nexx.models

include "pagination.thrift"

/**
 * Notification form model
 */
struct NotificationInsert {

    1:required string title
    2:required string message
    3:optional list<string> audience
    4:required string type
    5:optional string subjectId
    6:optional string subjectType
    7:optional bool isRead = false
    8:optional string metadata
    9:optional i32 status
}

/**
 * Notification form model
 */
struct NotificationForm {

    1:required string uid
    2:optional string title
    3:optional string message
    4:optional list<string> audience
    5:optional string type
    6:optional string subjectId
    7:optional string subjectType
    8:optional bool isRead = false
    9:optional string metadata
    10:optional i32 status
    11:optional list<string> userRead
    12:optional list<string> userDeleted
}

/**
 * Notification model
 */
struct Notification {

    1:optional string uid
    2:optional string title
    3:optional string message
    4:optional list<string> audience
    5:optional string type
    6:optional string subjectId
    7:optional string subjectType
    8:optional bool isRead = false
    9:optional string metadata
    10:optional string createdAt
    11:optional string updatedAt
    12:optional i32 status
    13:optional list<string> userRead
    14:optional list<string> userDeleted
}

/**
 * Notification filter model
 */
struct NotificationFilter {

    1:optional string title
    2:optional string message
    3:optional string userId
    4:optional string type
    5:optional string subjectId
    6:optional bool isRead
    7:optional string createdFrom
    8:optional string createdTo
    9:optional string status
}

/**
 * Pagination Notification model
 */
struct PaginationNotifications {

    1:pagination.Pagination pagination
    2:list<Notification> data
}
