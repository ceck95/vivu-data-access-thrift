namespace js oauth.models
namespace php oauth.models

struct AccessToken {

    1:required string accessToken
    2:required i32 applicationId
    3:optional string expiresIn
    4:required i32 userId
    5:required string refreshToken

    6:optional string createdAt
    7:optional string updatedAt
}

struct AccessTokenInsert {

    1:required string accessToken
    2:required i32 applicationId
    3:required string expiresIn
    4:required i32 userId
    5:required string refreshToken
}

struct AccessTokenForm {

    1:optional string accessToken
    2:optional i32 applicationId
    3:optional string expiresIn
    4:optional i32 userId
    5:optional string refreshToken
}

struct AccessTokenQuery {

    1:optional string accessToken
    2:optional i32 applicationId
    3:optional i32 userId
    4:optional string refreshToken
}
