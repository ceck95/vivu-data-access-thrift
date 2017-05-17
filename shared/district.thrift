namespace js nexx.shared
namespace php nexx.shared

/**
 * District model
 */
struct District {
   1:required string countryCode,
   2:required string provinceCode,
   3:required string districtCode,
   4:required string name,
   5:optional string nameAscii,
   6:optional string type,
   7:optional string location,
   8:optional double latitude,
   9:optional double longitude,
   10:optional string gisId,
   11:optional string metadata
}


/**
 * District option
 */
struct DistrictOption {
   1:required string countryCode,
   2:required string provinceCode,
   3:required string districtCode,
   4:required string name
   5:optional string type
}
