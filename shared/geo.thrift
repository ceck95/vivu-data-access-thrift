namespace js nexx.shared
namespace php nexx.shared


/**
 * Geography point object
 */
struct GeoPoint {
    1:optional string type = "Point",
    2:required list<double> coordinates
}

/**
 * Query locations near point
 */
struct QueryNearPoint {

    1:required GeoPoint geometry,
    2:optional i32 maxDistance,
    3:optional i32 minDistance,
    4:optional i32 duration = 5,
    5:optional bool visibleOnly = true
}
