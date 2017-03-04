namespace js vv.models
namespace php vv.models

struct ClientIdInsert {
    1:optional string clientId
    2:optional i32 status
    3:optional string createdAt
    4:optional i32 expiry
    5:optional i32 applicationId
}

struct ClientIdForm {
  1:optional string clientId
  2:optional i32 expiry
  3:optional i32 applicationId
  4:optional i32 status
  5:optional string updatedAt
}

struct ClientId {
  1:optional string clientId
  2:optional i32 expiry
  3:optional i32 applicationId
}

struct ClientIdQuery {
  1:optional string clientId
}
