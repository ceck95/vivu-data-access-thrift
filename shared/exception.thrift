namespace js nexx.exceptions
namespace php nexx.exceptions

/**
 * Database Exception Struct
 */
struct DBException {

    1:string code
    2:string message
    3:string uiMessage
    4:string constraint
    5:string table
    6:string schema
    7:string source
    8:string dataType
    9:string time
    10:string ipAddress
    11:string host
    12:string port
}

/**
 * Database Exceptions List
 */
exception DBExceptions {
    1:list<DBException> errors
}
