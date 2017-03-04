namespace js dtaxi.service
namespace php dtaxi.service

include "exception.thrift"
include "address.thrift"
include "province.thrift"
include "district.thrift"
include "country.thrift"
include "ward.thrift"

service BaseService {

    // Address
    address.Address insertAddress(1:address.AddressInsert model) throws (1:exception.DBExceptions ex),
    address.Address updateAddress(1:address.AddressForm model) throws (1:exception.DBExceptions ex),
    address.Address updateAddressBySubject(1:address.AddressForm model) throws (1:exception.DBExceptions ex),
    address.Address getAddress(1:string uid) throws (1:exception.DBExceptions ex),
    address.Address getOrCreateAddress(1:address.AddressInsert model) throws (1:exception.DBExceptions ex),
    address.Address getAddressBySubject(1:string subjectId, 2:list<string> type) throws (1:exception.DBExceptions ex),
    list<address.Address> getAddressBySubjects(1:list<string> subjectIds, 2:list<string> type) throws (1:exception.DBExceptions ex),
    address.Address getOrCreateAddressBySubject(1:address.AddressInsert model) throws (1:exception.DBExceptions ex),
    bool deleteAddress(1:string uid) throws (1:exception.DBExceptions ex),
    // End Address

    // Province
    list<province.Province> getProvincesByCountry(1:string countryCode) throws (1:exception.DBExceptions ex),
    // End Province

    // District
    list<district.District> getDistrictsByProvince(1:string countryCode, 2:string provinceCode) throws (1:exception.DBExceptions ex),
    // End District

    // Ward
    list<ward.Ward> getWardsByDistrict(1:string countryCode, 2:string provinceCode, 3:string districtCode) throws (1:exception.DBExceptions ex),
    // End ward
}
