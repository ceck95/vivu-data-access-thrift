namespace js nexx.shared
namespace php nexx.shared

/**
 * Country model
 */
struct Country {
   1:required string countryCode,
   2:optional string iso3,
   3:optional i32 iso_num,
   4:optional string fips,
   5:optional string name,
   6:optional string capital,
   7:optional double areaKm2,
   8:optional i32 population,
   9:optional string continent,
   10:optional string tld,
   11:optional string currencyCode,
   12:optional string currencyName,
   13:optional string phoneCode,
   14:optional string postalCodeFormat,
   15:optional string postalCodeRegex,
   16:optional string neighbours,
   17:optional string equivalenFipsCode,
   18:optional string gisId,
   19:optional string metadata,
}


/**
 * Country option
 */
struct CountryOption {
   1:required string countryCode,
   2:required string name
}
