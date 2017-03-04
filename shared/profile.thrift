namespace js nexx.shared
namespace php nexx.shared

struct ProfileVerificationForm {
    1:required string uid
    2:optional string verificationCode
    3:optional string verificationExpiry
    4:optional string updatedBy
    5:optional bool isVerified
}
