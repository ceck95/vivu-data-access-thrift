namespace js nexx.shared
namespace php nexx.shared

/**
 * Ward model
 */
struct Ward {
   1:required i32 uid,
   2:required string countryCode,
   3:required string provinceCode,
   4:required string districtCode,
   5:required string wardCode,
   6:required string name,
   7:optional string nameAscii,
   8:optional string type,
   9:optional string location,
   10:optional double latitude,
   11:optional double longitude,
   12:optional string gisId,
   13:optional string metadata
}


/**
 * Ward option
 */
struct WardOption {
   1:required i32 uid,
   2:required string countryCode,
   3:required string provinceCode,
   4:required string districtCode,
   5:optional string wardCode,
   6:optional string name
}
