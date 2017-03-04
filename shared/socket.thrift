namespace js nexx.shared
namespace php nexx.shared

/**
 * Socket Session Insert Model
 */
struct SessionInsert {

    1:required string userId,
    2:required string socketId,
    3:required i32 expiresIn,
    4:required string type,
    5:required i32 status,
    6:required i32 socketServerId
}

/**
 * Socket Session Form
 */
struct SessionForm {

    1:optional string socketId,
    2:optional i32 expiresIn,
    3:optional string type,
    4:optional i32 status,
    5:optional i32 socketServerId
}

/**
 * Socket Session Query
 */
struct SessionQuery {

    1:optional string socketId,
    2:optional string userId,
    3:optional string type,
    4:optional i32 status,
    5:optional i32 socketServerId
}

/**
 * Socket Session Data
 */
struct Session {

    1:optional string uid,
    2:optional string userId,
    3:optional string socketId,
    4:optional string createdAt,
    5:optional string lastActive,
    6:optional i32 expiresIn,
    7:optional string type,
    8:optional i32 status,
    9:optional i32 socketServerId
}
