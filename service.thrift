namespace js vv.service
namespace php vv.service

include "shared/geo.thrift"
include "shared/exception.thrift"
include "models/client_id.thrift"
include "models/access_token.thrift"
include "models/customer.thrift"
include "models/customer_address.thrift"
include "shared/options.thrift"
include "shared/country.thrift"
include "models/product.thrift"
include "models/product_color.thrift"
include "models/product_color_preview_image.thrift"
include "models/category.thrift"
include "models/category_group.thrift"
include "shared/pagination.thrift"


service VIVUDataService {

    // common
    string commonGenerateUid() throws (1:exception.DBExceptions ex)

    //Client Id
    client_id.ClientId clientIdInsertOne(1:client_id.ClientIdInsert model) throws (1:exception.DBExceptions ex)
    client_id.ClientId clientIdGetOne(1:client_id.ClientIdQuery query) throws (1:exception.DBExceptions ex)

    //Access Token
    access_token.AccessToken accessTokenInsertOne(1:access_token.AccessTokenInsert form) throws (1:exception.DBExceptions ex)
    i32 accessTokenUpdateOne(1:access_token.AccessTokenForm form, 2:access_token.AccessTokenQuery query) throws (1:exception.DBExceptions ex)

    access_token.AccessToken accessTokenUpsertOne(1:access_token.AccessTokenInsert form) throws (1:exception.DBExceptions ex)
    access_token.AccessToken accessTokenGetOne(1:access_token.AccessTokenQuery query) throws (1:exception.DBExceptions ex)
    i32 accessTokenDeleteOne(1:access_token.AccessTokenQuery query) throws (1:exception.DBExceptions ex)
    i32 accessTokenDeleteMany(1:access_token.AccessTokenQuery query) throws (1:exception.DBExceptions ex)

    //Customer
    customer.Customer customerInsertOne(1:customer.CustomerInsert form) throws (1:exception.DBExceptions ex)
    customer.Customer customerGetOneByPk(1:i32 userId) throws (1:exception.DBExceptions ex)
    customer.Customer customerGetOneRelationByPk(1:i32 userId,2:options.SelectOptions options) throws (1:exception.DBExceptions ex)
    customer.Customer customerGetOneByEmail(1:string email) throws (1:exception.DBExceptions ex)
    bool customerChangePassword(1:i32 uid, 2:string password) throws (1:exception.DBExceptions ex)

    //CustomerAddress
    customer_address.CustomerAddress customerAddressInsertOne(1:customer_address.CustomerAddressInsert form) throws (1:exception.DBExceptions ex)

    //Country
    list<country.CountryOption> countryGetAll()  throws (1:exception.DBExceptions ex)
    country.CountryOption countryGetOneByCountryCode(1:string countryCode)  throws (1:exception.DBExceptions ex)
    country.CountryOption countryGetOne(1:string countryCode)  throws (1:exception.DBExceptions ex)

    //Product
    product.PaginationProduct productFilterPagination(1:product.ProductFilter filter,2:pagination.PagingQuery query) throws (1:exception.DBExceptions ex)

    //CategoryGroup
    list<category_group.CategoryGroup> categoryGroupGetAllActive() throws (1:exception.DBExceptions ex)

    //Category
    list<category.Category> categoryGetAllActive() throws (1:exception.DBExceptions ex)
}
