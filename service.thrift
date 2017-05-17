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
include "shared/province.thrift"
include "shared/district.thrift"
include "shared/ward.thrift"
include "models/quote.thrift"
include "models/quote_item.thrift"
include "models/quote_payment.thrift"
include "models/order.thrift"
include "models/order_item.thrift"
include "models/order_payment.thrift"
include "models/order_status_history.thrift"


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
    customer.Customer customerUpdateOne(1:customer.CustomerForm form,2:options.SelectOptions options) throws (1:exception.DBExceptions ex)
    customer.Customer customerGetOneByPk(1:i32 userId) throws (1:exception.DBExceptions ex)
    customer.Customer customerGetOneRelationCustomize(1:i32 userId,2:options.SelectOptions options) throws (1:exception.DBExceptions ex)
    customer.Customer customerGetOneByEmail(1:string email) throws (1:exception.DBExceptions ex)
    bool customerChangePassword(1:i32 uid, 2:string password) throws (1:exception.DBExceptions ex)

    //CustomerAddress
    customer_address.CustomerAddress customerAddressInsertOne(1:customer_address.CustomerAddressInsert form) throws (1:exception.DBExceptions ex)
    customer_address.CustomerAddress customerAddressGetOneDefault() throws (1:exception.DBExceptions ex)
    customer_address.CustomerAddress customerAddressUpdateOne(1:customer_address.CustomerAddressForm form,2:options.SelectOptions options) throws (1:exception.DBExceptions ex)
    list<customer_address.CustomerAddress> customerAddressGetManyByCustomer(1:i32 customerId) throws (1:exception.DBExceptions ex)

    //Country
    list<country.CountryOption> countryGetAll()  throws (1:exception.DBExceptions ex)
    country.CountryOption countryGetOneByCountryCode(1:string countryCode)  throws (1:exception.DBExceptions ex)
    country.CountryOption countryGetOne(1:string countryCode)  throws (1:exception.DBExceptions ex)

    //Province
    list<province.ProvinceOption> provinceGetAll() throws (1:exception.DBExceptions ex)
    list<province.ProvinceOption> provinceGetManyByCountry(1:string countryCode) throws (1:exception.DBExceptions ex)
    province.ProvinceOption provinceGetOneByProvinceCode(1:string provinceCode)throws (1:exception.DBExceptions ex)

    //District
    list<district.DistrictOption> districtGetAll() throws (1:exception.DBExceptions ex)
    list<district.DistrictOption> districtGetManyByProvince(1:string countryCode, 2:string provinceCode) throws (1:exception.DBExceptions ex)
    district.DistrictOption districtGetOneByDistrictCode(1:string districtCode)throws (1:exception.DBExceptions ex)

    //Ward
    list<ward.WardOption> wardGetAll() throws (1:exception.DBExceptions ex)
    list<ward.WardOption> wardGetManyByDistrict(1:string countryCode, 2:string provinceCode, 3:string districtCode) throws (1:exception.DBExceptions ex)
    ward.WardOption wardGetOneByWardCode(1:string wardCode)throws (1:exception.DBExceptions ex)

    //Product
    product.PaginationProduct productFilterPagination(1:product.ProductFilter filter,2:pagination.PagingQuery query) throws (1:exception.DBExceptions ex)
    list<product.Product> productGetManyByCategoryGroup(1:i32 categoryGroupId,2:options.SelectOptions options)throws (1:exception.DBExceptions ex)
    product.Product productGetOneProduct (1:string urlKey) throws (1:exception.DBExceptions ex)
    list<product.Product> productGetManyByCategory(1:i32 categoryId,2:options.SelectOptions options) throws (1:exception.DBExceptions ex)
    product.Product productGetOneProductAndProductColor(1:i32 productId,2:i32 productColorId,3:options.SelectOptions options) throws (1:exception.DBExceptions ex)

    //Product Color
    list<product_color.ProductColor> productColorGetManyByProduct (1:i32 productId) throws (1:exception.DBExceptions ex)

    //Product Color Preview Image
    list<product_color_preview_image.ProductColorPreviewImage> productColorPreviewImageGetManyByProductColor (1:list<i32> productColorId) throws (1:exception.DBExceptions ex)

    //CategoryGroup
    list<category_group.CategoryGroup> categoryGroupGetAllActive() throws (1:exception.DBExceptions ex)

    //Category
    list<category.Category> categoryGetAllActive() throws (1:exception.DBExceptions ex)

    //Quote
    quote.Quote quoteGetOrCreate(1:quote.QuoteForm insert) throws (1:exception.DBExceptions ex)
    quote.Quote quoteGetOne(1:i32 id) throws (1:exception.DBExceptions ex)
    quote.Quote quoteGetOneByPk(1:i32 id) throws (1:exception.DBExceptions ex)
    quote.Quote quoteUpdateOne(1:quote.QuoteForm form,2:options.SelectOptions options) throws (1:exception.DBExceptions ex)
    quote.Quote quoteGetOneByCustomer(1:i32 customerId) throws (1:exception.DBExceptions ex)

    //QuoteItem
    quote_item.QuoteItem quoteItemInsertOne(1:quote_item.QuoteItemInsert insert) throws (1:exception.DBExceptions ex)
    list<quote_item.QuoteItem> quoteItemGetManyByQuote(1:i32 quoteId,2:options.SelectOptions options) throws (1:exception.DBExceptions ex)
    quote_item.QuoteItem quoteItemGetOneByProductAndProductColor(1:i32 productId,2:i32 productColorId,3:i32 quoteId) throws (1:exception.DBExceptions ex)
    quote_item.QuoteItem quoteItemGetOneByPk(1:i32 id) throws (1:exception.DBExceptions ex)
    quote_item.QuoteItem quoteItemUpdateOne(1:quote_item.QuoteItemForm form,2:options.SelectOptions options) throws (1:exception.DBExceptions ex)

    //QuotePayment
    quote_payment.QuotePayment quotePaymentInsertOne(1:quote_payment.QuotePaymentInsert insert)throws (1:exception.DBExceptions ex)

   //Order
    order.Order orderInsertOne(1:order.OrderInsert insert) throws (1:exception.DBExceptions ex)
    list<order.Order> orderInsertMany(1:list<order.OrderInsert> models) throws (1:exception.DBExceptions ex)
    order.Order orderUpdateOne(1:order.OrderForm form) throws (1:exception.DBExceptions ex)
    order.Order orderGetOneByPk(1:i32 pk) throws (1:exception.DBExceptions ex)
    order.Order orderGetOneRelationByPk(1:i32 pk,2:options.SelectOptions options) throws (1:exception.DBExceptions ex)
    list<order.Order> orderGetMany(1:list<i32> pks) throws (1:exception.DBExceptions ex)
    list<order.Order> orderGetManyOneRelation(1:list<i32> pks,2:options.SelectOptions options) throws (1:exception.DBExceptions ex)
    list<order.Order> orderGetAll() throws (1:exception.DBExceptions ex)
    list<order.Order> orderGetAllStatus(1:i32 status) throws (1:exception.DBExceptions ex)
    list<order.Order> orderGetAllActive() throws (1:exception.DBExceptions ex)
    list<order.Order> orderGetAllInactive() throws (1:exception.DBExceptions ex)
    list<order.Order> orderGetAllDisabled() throws (1:exception.DBExceptions ex)
    list<order.Order> orderGetAllDeleted() throws (1:exception.DBExceptions ex)
    list<order.Order> orderFilter(1:order.OrderFilter filter,2:pagination.PagingQuery query) throws (1:exception.DBExceptions ex)
    order.PaginationOrder OrderFilterPagination(1:order.OrderFilter filter,2:pagination.PagingQuery query) throws (1:exception.DBExceptions ex)
    order.Order orderDeleteByPk(1:i32 pk) throws (1:exception.DBExceptions ex)
    order.Order orderGetOrCreate(1:order.OrderForm form) throws (1:exception.DBExceptions ex)
    list<order.Order> orderGetManyByCustomer(1:i32 customerId,2:options.SelectOptions options) throws (1:exception.DBExceptions ex)

    //OrderItem
    order_item.OrderItem orderItemInsertOne(1:order_item.OrderItemInsert insert)throws (1:exception.DBExceptions ex)
    list<order_item.OrderItem> orderItemInsertMany(1:list<order_item.OrderItemInsert> insert)throws (1:exception.DBExceptions ex)
    list<order_item.OrderItem> orderItemGetManyByOrder(1:list<i32> pks,2:options.SelectOptions options) throws (1:exception.DBExceptions ex)

    //OrderPayment
    order_payment.OrderPayment orderPaymentInsertOne(1:order_payment.OrderPaymentInsert insert)throws (1:exception.DBExceptions ex)

   //OrderStatusHistory
    order_status_history.OrderStatusHistory orderStatusHistoryInsertOne(1:order_status_history.OrderStatusHistoryInsert insert) throws (1:exception.DBExceptions ex)
    list<order_status_history.OrderStatusHistory> orderStatusHistoryInsertMany(1:list<order_status_history.OrderStatusHistoryInsert> models) throws (1:exception.DBExceptions ex)
    order_status_history.OrderStatusHistory orderStatusHistoryUpdateOne(1:order_status_history.OrderStatusHistoryForm form) throws (1:exception.DBExceptions ex)
    order_status_history.OrderStatusHistory orderStatusHistoryGetOneByPk(1:i32 pk) throws (1:exception.DBExceptions ex)
    order_status_history.OrderStatusHistory orderStatusHistoryGetOneRelationByPk(1:i32 pk,2:options.SelectOptions options) throws (1:exception.DBExceptions ex)
    list<order_status_history.OrderStatusHistory> orderStatusHistoryGetMany(1:list<i32> pks) throws (1:exception.DBExceptions ex)
    list<order_status_history.OrderStatusHistory> orderStatusHistoryGetManyOneRelation(1:list<i32> pks,2:options.SelectOptions options) throws (1:exception.DBExceptions ex)
    list<order_status_history.OrderStatusHistory> orderStatusHistoryGetAll() throws (1:exception.DBExceptions ex)
    list<order_status_history.OrderStatusHistory> orderStatusHistoryGetAllStatus(1:i32 status) throws (1:exception.DBExceptions ex)
    list<order_status_history.OrderStatusHistory> orderStatusHistoryGetAllActive() throws (1:exception.DBExceptions ex)
    list<order_status_history.OrderStatusHistory> orderStatusHistoryGetAllInactive() throws (1:exception.DBExceptions ex)
    list<order_status_history.OrderStatusHistory> orderStatusHistoryGetAllDisabled() throws (1:exception.DBExceptions ex)
    list<order_status_history.OrderStatusHistory> orderStatusHistoryGetAllDeleted() throws (1:exception.DBExceptions ex)
    list<order_status_history.OrderStatusHistory> orderStatusHistoryFilter(1:order_status_history.OrderStatusHistoryFilter filter,2:pagination.PagingQuery query) throws (1:exception.DBExceptions ex)
    order_status_history.PaginationOrderStatusHistory OrderStatusHistoryFilterPagination(1:order_status_history.OrderStatusHistoryFilter filter,2:pagination.PagingQuery query) throws (1:exception.DBExceptions ex)
    order_status_history.OrderStatusHistory orderStatusHistoryDeleteByPk(1:i32 pk) throws (1:exception.DBExceptions ex)
    order_status_history.OrderStatusHistory orderStatusHistoryGetOrCreate(1:order_status_history.OrderStatusHistoryForm form) throws (1:exception.DBExceptions ex)

}
