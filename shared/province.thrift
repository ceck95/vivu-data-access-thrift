namespace js nexx.shared
namespace php nexx.shared

/**
 * Province model
 */
struct Province {
   1:required string countryCode,
   2:required string provinceCode,
   3:optional string name,
   4:optional string nameAscii,
   5:optional string type,
   6:optional string gisId,
   7:optional string metadata
}


/**
 * Province option
 */
struct ProvinceOption {
   1:required string countryCode,
   2:required string provinceCode,
   3:optional string name
   4:optional string type
}
