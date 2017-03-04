namespace js nexx.shared
namespace php nexx.shared

/**
 * General address object model
 */
struct Address {

    1:optional string uid,
    2:optional string address,
    3:optional string ward,
    4:optional i32 wardCode,
    5:optional string district,

    6:optional string districtCode,
    7:optional string province,
    8:optional string provinceCode,
    9:optional string countryCode,
    10:optional string locationId,

    11:optional double latitude,
    12:optional double longitude,
    13:optional list<string> type,
    14:optional string userId,
    15:optional string parentId,

    16:optional string subjectId,
    17:optional string metadata,
    18:optional string createdAt,
    19:optional string updatedAt,
    20:optional string createdBy,

    21:optional string updatedBy,
    22:optional i32 status = 0
}

struct AddressInsert {
    1:optional string uid,
    2:optional string address,
    3:optional string ward,
    4:optional i32 wardCode,
    5:optional string district,

    6:optional string districtCode,
    7:optional string province,
    8:optional string provinceCode,
    9:optional string countryCode,
    10:optional string locationId,

    11:optional double latitude,
    12:optional double longitude,
    13:optional list<string> type,
    14:optional string userId,
    15:optional string parentId,

    16:optional string subjectId,
    17:optional string metadata,
    18:optional string createdBy,
    19:optional string updatedBy,
    20:optional i32 status = 0
}

struct AddressForm {

    1:required string uid,
    2:optional string address,
    3:optional string ward,
    4:optional i32 wardCode,
    5:optional string district,

    6:optional string districtCode,
    7:optional string province,
    8:optional string provinceCode,
    9:optional string countryCode,
    10:optional string locationId,

    11:optional double latitude,
    12:optional double longitude,
    13:optional list<string> type,
    14:optional string userId,
    15:optional string parentId,

    16:optional string subjectId,
    17:optional string metadata,
    18:optional string createdBy,
    19:optional string updatedBy,
    20:optional i32 status = 0
}
/**
 * Simple address data
 */
struct SimpleAddress {
    1:optional string uid,
    2:optional string address,
    3:optional list<double> coordinates
}




